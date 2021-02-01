<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reporte extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Reporte_model', 'reporte');
	}
	public function index()
	{
		$this->load->view('admin/reportes_view');
	}
	public function consultaUno()
	{
		$estado  = $this->input->post("estado");
		$fini    = $this->input->post("fini");
		$ffin    = $this->input->post("ffin");
		$formato = $this->input->post("formato");
		if($estado != '' && $fini != '' ){
			$queryParams = array('estado' => $estado, 'fini' => $fini,'ffin' => $ffin);
			$data['result'] = $this->reporte->consultaUno($queryParams);
			if($ffin == ''){
				$ffin = date('d/m/Y');
			}
			$data['filtros'] = array('fecha_inicio'=> $fini, 'fecha_fin' => $ffin, 'estado' => estado_literal($estado));
			$filename = 'Reporte_tickets_emitido_'.estado_literal($estado);

			$html = $this->load->view('admin/reportes_pdf/consulta-uno', $data, TRUE);
			$this->pdfgenerator->generate($this->session->userdata('username'),$html, $filename, true, '', 'portrait');

		}else{
			echo "datos vacios";
		}
	}
}