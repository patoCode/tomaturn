<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Turno extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
        $this->load->model('Categoria_model','categoria');
        $this->load->model('Zona_model','zona');
        $this->load->model('Ticket_model','tk');
        $this->load->model('SolicitudTicket_model','st');
        $this->load->model('BitacoraAtencion_model','ba');
        $this->load->model('UsuarioEstacion_model','eu');
        $this->load->model('Estacion_model','est');
        $this->load->model('Multimedia_model','multimedia');
    }
    public function index()
    {
        $data['zonas'] = $this->zona->getActivas();
    	$this->load->view('operario/zona', $data);
    }
    public function dashboard($idZona)
    {
        $data['zona'] = $this->zona->getZona($idZona);
        $data['atendidos'] = $this->ba->getAtendidosByUsuario($this->session->userdata('id_usuario'));
        $this->load->view('operario/dashboard', $data);
    }
    public function pedirTicket($idZona)
    {
        $id_usuario     = $this->session->userdata('id_usuario');;
        $fecha          = date("Y-m-d");
        $hora           = date("H:i:s");
        $estado_llamada = EST_LLAMANDO;
        $ticket         = $this->getNextTicket($idZona, $fecha);
        $estacion       = $this->eu->getEstacionByUsuarioZona($id_usuario, $idZona);

        if( $ticket != null && $estacion != null)
        {
            $this->tk->updateEstado($ticket->ID_TICKET, TK_EST_2 );
            $this->tk->updateOnDisplay($ticket->ID_TICKET, ON_DISPLAY_BLINK );
            $nro_llamada_actual = $this->countNroLlamada($ticket->ID_TICKET, $id_usuario, $fecha) + 1;
            $data_llamada = array(
                        'id_usuario'     => $id_usuario,
                        'id_ticket'      => $ticket->ID_TICKET,
                        'id_estacion'    => $estacion->ID_ESTACION,
                        'fecha_llamada'  => $fecha,
                        'hora_llamada'   => $hora,
                        'estado_llamada' => TK_EST_2,
                        'nro_llamada'    => $nro_llamada_actual
                        );
            if($this->st->insert($data_llamada))
            {
                 $data_registro = array(
                        'id_usuario'            => $id_usuario,
                        'id_ticket'             => $ticket->ID_TICKET,
                        'id_estacion'           => $estacion->ID_ESTACION,
                        'fecha_inicio_atencion' => $fecha,
                        'hora_inicio_atencion'  => $hora,
                        'accion'                => $estado_llamada
                );
                $this->ba->insert($data_registro);
                $respuesta = array('response' => 1, 'ticket' => $ticket, 'llamada' =>$nro_llamada_actual);
                $this->session->set_userdata( array('disponibilidad' => EST_OPERARIO_ATENCION) );
            }else{
                $respuesta = array('response' => 0, 'mensaje' => MSG_NO_TICKET);
            }

        }else{
            $respuesta = array('response' => 0, 'mensaje' => MSG_NO_TICKET);
        }
        echo json_encode($respuesta);
    }
    public function llamarTicker($idTicket)
    {
        $id_usuario         = $this->session->userdata('id_usuario');;
        $id_estacion        = 1;
        $fecha              = date("Y-m-d");
        $hora               = date("H:i:s");
        $nro_llamada_actual = $this->countNroLlamada($idTicket, $id_usuario, $fecha) +1;
        $respuesta          = 1;
        $mensaje            = MSG_OK_TICKET;
        $ticket             = $this->tk->getById($idTicket);
        $estado_llamada     = EST_LLAMANDO;

        if($nro_llamada_actual <= MAX_LLAMADAS &&
            $ticket->ESTADO == TK_EST_2 &&
            (   $ticket->ESTADO != TK_EST_3 &&
                $ticket->ESTADO != TK_EST_4 &&
                $ticket->ESTADO != TK_EST_6 )){
            $estado_ticket = TK_EST_2;
        }else{
            //EL TICKET SE FUE
            $estado_ticket  = TK_EST_6;
            $respuesta      = 0;
            $mensaje        = MSG_MAX_LLAMADAS;
            $estado_llamada = EST_SIN_ATENDER;
            $this->tk->updateOnDisplay($idTicket, ON_DISPLAY_FIN );
            $this->session->set_userdata( array('disponibilidad' => EST_OPERARIO_LIBRE) );
        }
        $data_registro = array(
                'id_usuario'            => $id_usuario,
                'id_ticket'             => $idTicket,
                'id_estacion'            => $id_estacion,
                'fecha_inicio_atencion' => $fecha,
                'hora_inicio_atencion'  => $hora,
                'accion'                => $estado_llamada
        );
        $this->ba->insert($data_registro);

        $this->tk->updateEstado($idTicket, $estado_ticket);

        $data_llamada = array(
                    'id_usuario' => $id_usuario,
                    'id_ticket' => $idTicket,
                    'id_estacion' => $id_estacion,
                    'fecha_llamada' => $fecha,
                    'hora_llamada' => $hora,
                    'estado_llamada' => $estado_ticket ,
                    'nro_llamada' => $nro_llamada_actual
                    );
        $this->st->insert($data_llamada);
        $respuesta = array('response' => $respuesta, 'ticket' => $ticket, 'llamada' => $nro_llamada_actual, 'mensaje' => $mensaje);
        echo json_encode($respuesta);
    }
    public function iniciarAtencionTicket($idTicket)
    {
        $id_usuario  = $this->session->userdata('id_usuario');;
        $id_estacion = 1;
        $fecha       = date("Y-m-d");
        $hora        = date("H:i:s");
        $ticket      = $this->tk->getById($idTicket);
        $respuesta   = 1;
        $mensaje     = MSG_OK_TICKET;
        $data_registro = array(
                        'id_usuario'            => $id_usuario,
                        'id_ticket'             => $idTicket,
                        'id_estacion'           => $id_estacion,
                        'fecha_inicio_atencion' => $fecha,
                        'hora_inicio_atencion'  => $hora,
                        'accion'                => EST_INICIO_ATENCION
                        );
        if($this->ba->insert($data_registro)){
            $mensaje = MSG_TK_INICIO_ATENCION.' '.$ticket->CODIGO;
            $this->tk->updateEstado($idTicket, TK_EST_3 );
            $this->tk->updateOnDisplay($idTicket, ON_DISPLAY_TRUE );
        }else{
            $respuesta = 0;
        }
        $respuesta = array('response' => $respuesta, 'ticket' => $ticket, 'mensaje' => $mensaje);
        echo json_encode($respuesta);
    }
    public function finalizarAtencionTicket($idTicket)
    {
        $id_usuario  = $this->session->userdata('id_usuario');;
        $id_estacion = 1;
        $fecha       = date("Y-m-d");
        $hora        = date("H:i:s");
        $ticket      = $this->tk->getById($idTicket);
        $respuesta   = 1;
        $mensaje     = MSG_OK_TICKET;
        if($ticket->ESTADO == TK_EST_3){
            $data_registro = array(
                        'id_usuario'            => $id_usuario,
                        'id_ticket'             => $idTicket,
                        'id_estacion'           => $id_estacion,
                        'fecha_inicio_atencion' => $fecha,
                        'hora_inicio_atencion'  => $hora,
                        'accion'                => EST_FINALIZADO
                        );
            if($this->ba->insert($data_registro)){
                $this->tk->updateEstado($idTicket, TK_EST_4);
                $this->tk->updateOnDisplay($idTicket, ON_DISPLAY_FIN );
                $mensaje = MSG_TK_FIN_ATENCION.' '.$ticket->CODIGO;
            }else{
                $respuesta = 0;
            }
            $this->session->set_userdata( array('disponibilidad' => EST_OPERARIO_LIBRE) );
        }else{
            $respuesta = 2;
            $mensaje = "No puede finalizar este ticket";

        }
        $respuesta = array('response' => $respuesta, 'ticket' => $ticket, 'mensaje' => $mensaje);
        echo json_encode($respuesta);
    }
    public function derivarTicket($idTicket, $idZona)
    {
        $id_usuario  = $this->session->userdata('id_usuario');;
        $id_estacion = 1;
        $fecha       = date("Y-m-d");
        $hora        = date("H:i:s");
        $ticket      = $this->tk->getById($idTicket);
        $respuesta   = 1;
        $mensaje     = MSG_OK_TICKET;
        $data_registro = array(
                        'id_usuario'            => $id_usuario,
                        'id_ticket'             => $idTicket,
                        'id_estacion'           => $id_estacion,
                        'fecha_inicio_atencion' => $fecha,
                        'hora_inicio_atencion'  => $hora,
                        'accion'                => EST_DERIVADO
                        );
        if($this->ba->insert($data_registro)){
            $mensaje = MSG_TK_INICIO_ATENCION.' '.$ticket->CODIGO;
            $this->session->set_userdata( array('disponibilidad' => EST_OPERARIO_LIBRE) );
        }else{
            $respuesta = 0;
        }
        $respuesta = array('response' => $respuesta, 'ticket' => $ticket, 'mensaje' => $mensaje);
        echo json_encode($respuesta);
    }
    public function getNextTicket($idZona, $fecha)
    {
        $ticket = $this->tk->getTicketsByZona($idZona, $fecha);
        ##############################################
        //aca la logica d como seleccioar el siguiente
        ##############################################
        return $ticket;
    }
    public function countNroLlamada($idTicket, $idUsuario, $fecha)
    {
        $numero = $this->st->countNroLlamada($idTicket, $idUsuario, $fecha);
        return $numero;
    }
    // DISPLAY
    public function display()
    {
        $ticket_list         = $this->tk->listarOnDisplay();
        $array_tickets_vista = array();
        foreach ($ticket_list as $ticket)
        {
            $solicitudTicket         = $this->st->getSolicitudTicketByIdTicket($ticket->ID_TICKET);
            $estacion                = $this->est->getById($solicitudTicket->ID_ESTACION);
            $elemento                = new stdClass();
            $elemento->estacion      = $estacion->NOMBRE_DISPLAY;
            $elemento->ticket_codigo = $ticket->CODIGO;
            $elemento->blink         = $ticket->ON_DISPLAY;
            $elemento->on_display    = $ticket->ON_DISPLAY;
            array_push($array_tickets_vista, $elemento);
        }
        $multimedia = $this->multimedia->getActivo();
        $data['multimedia'] = $multimedia;
        $data['tickets'] = $array_tickets_vista;
        $this->load->view('public/display', $data);
    }
}