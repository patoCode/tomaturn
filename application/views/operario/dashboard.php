<?php $this->load->view('commons/header');	?>
<?php $this->load->view('operario/menu_operador');  ?>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
  <h3 class="display-4">
    <?php echo $zona->NOMBRE; ?>
  </h3>
  <p>
    Pulse el boton "llamar" para comenzar la atencion
  </p>

</div>
<div class="container">
  <div class="row">
    <div class="col-md-12">
        <button class="btn btn-dark btn-lg btn-block btn-huge llamar" data-id-zona="<?php echo $zona->ID_ZONA; ?>"> <i class="fa fa-bell"></i> Llamar </button>

      	<!-- <a href="#" class="btn btn-dark btn-lg btn-block btn-huge pausarAtencion" data-id="<?php echo $this->session->userdata('id_usuario'); ?>" data-id-zona="<?php echo $zona->ID_ZONA; ?>">
      		<span class="oi oi-icon-bell" title="icon bell" aria-hidden="true"></span> pausar
      	</a>

        <a href="#" class="btn btn-dark btn-lg btn-block btn-huge continuarAtencion" data-id="<?php echo $this->session->userdata('id_usuario'); ?>" data-id-zona="<?php echo $zona->ID_ZONA; ?>">
          <span class="oi oi-icon-bell" title="icon bell" aria-hidden="true"></span> iniciar/continuar
        </a> -->

        <div id="empty" class="mt-3 alert alert-danger" style="display:none">
        </div>
    </div>
  </div>
  <!-- tabla de atendidos -->
  <?php if($atendidos != null): ?>
  <div class="row">
    <div class="col-md-12">
      <div class="card mt-2">
        <div class="card-header bg-success">
          <h3 >Mis atenciones</h3>
        </div>
        <div class="card-body">
          <table class="table table-hover table-bordered">
            <thead class="thead-dark text-center">
              <tr>
                <th>
                  CODIGO
                </th>
                <th>
                  ESTADO
                </th>
                <th>
                  ACCION
                </th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($atendidos as $ticket): ?>
              <tr>
                <td> <?php echo $ticket->CODIGO; ?> </td>
                <td> <?php echo $ticket->ESTADO; ?> </td>
              </tr>
            <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>

    </div>
  </div>
<?php endif; ?>

<?php $this->load->view('commons/modal_llamar'); ?>
<?php $this->load->view('commons/footer'); ?>
<script>
  var operarioDisponibilidad = <?php echo $this->session->userdata('disponibilidad');?>;
  var tiempoEntreLlamada = <?php echo TIEMPO_ENTRE_LLAMADA; ?>;
  // if(operarioDisponibilidad == 1)
  // {
  //   console.log("LLAMAR!!! "+operarioDisponibilidad);
  //   setTimeout(function(){
  //                 $('.llamar').click();
  //             }, tiempoEntreLlamada);
  // }
  // else
  // {
  //     console.log("Esperar a que este libre "+operarioDisponibilidad);
  // }

  $('.llamar').click(function(){
    // $('#llamarTicket').modal('show')
      var _self = $(this);
      var id_zona = _self.attr("data-id-zona");
      console.log("llamar zona ", id_zona);
      $('.finalizarModal').prop('disabled', true);
      $.ajax({
          url: '<?php echo base_url(); ?>Turno/pedirTicket/'+id_zona,
          type:'POST',
          dataType:'json',
          success: function(respuesta) {
            if(respuesta.response === 1){
              console.log(respuesta)
              llenarModalLlamar(respuesta.ticket, respuesta.llamada)
              $('#llamarTicket').modal('show')
            }else{
              $('#empty').text(respuesta.mensaje)
              $('#empty').toggle();
              // location.reload();
            }
          },
          error: function(xhr, status) {
                console.log("No se ha podido obtener la información");
            }
        });
    });

  $('.llamarModal').click(function(){

  });
  function llenarMensaje(mensaje){
    $('#mensaje').html();
    $('#mensaje').html(mensaje);
  }
  function llenarModalLlamar(ticket, llamada) {
    $('#ticketNro').html(ticket.CODIGO);
    $('#nroLlamada').html('LLAMADA # '+llamada);
    $('#llamarTicket').find('#llamadaMensaje').html("");
    $('.llamarModal').attr({
      'data-id': ticket.ID_TICKET
    });
    $('.llamarModal').attr({
      'data-id': ticket.ID_TICKET
    });
    $('.atenderModal').attr({
      'data-id': ticket.ID_TICKET
    });
    $('.finalizarModal').attr({
      'data-id': ticket.ID_TICKET
    });
    $('.derivarModal').attr({
      'data-id': ticket.ID_TICKET
    });
  }
  // LLAMAR
  $('.llamarModal').click(function(){
    var _self = $(this);
    var idTicket = _self.attr("data-id");
    $('.finalizarModal').prop('disabled', true);
      $.ajax({
          url: '<?php echo base_url(); ?>Turno/llamarTicker/'+idTicket,
          type:'POST',
          dataType:'json',
          success: function(respuesta) {
            if(respuesta.response === 1){
              actualizarLlamar('LLAMADA # '+respuesta.llamada);
            }else{
              actualizarLlamar('LLAMADA # '+respuesta.llamada);
              actualizarMensajeLlamada(respuesta.mensaje);
              $('#llamarTicket').modal('hide');
              location.reload();
            }
          },
          error: function(xhr, status) {
                console.log("No se ha podido obtener la información");
            }
        });
  });
  function actualizarLlamar(llamada) {
      $('#llamarTicket').find('#nroLlamada').html("");
      $('#llamarTicket').find('#nroLlamada').html(llamada);
  }
  function actualizarMensajeLlamada(mensaje){
      $('#llamarTicket').find('#llamadaMensaje').html("");
      $('#llamarTicket').find('#llamadaMensaje').html(mensaje);
  }
  // ATENDER
  $('.atenderModal').click(function(){
    var _self = $(this);
    var idTicket = _self.attr("data-id");
    $('.llamarModal').prop('disabled', true);
    $('.atenderModal').prop('disabled', true);
    $('.finalizarModal').prop('disabled', false);
      $.ajax({
          url: '<?php echo base_url(); ?>Turno/iniciarAtencionTicket/'+idTicket,
          type:'POST',
          dataType:'json',
          success: function(respuesta) {
            if(respuesta.response === 1){
              actualizarLlamar(respuesta.mensaje);
              actualizarMensajeLlamada("");
            }else{
              actualizarLlamar(respuesta.llamada);
              actualizarMensajeLlamada(respuesta.mensaje);
              $('#llamarTicket').modal('hide');
            }
          },
          error: function(xhr, status) {
                console.log("No se ha podido obtener la información");
            }
        });
  });
  //FINALIZAR
  $('.finalizarModal').click(function(){
    var _self = $(this);
    var idTicket = _self.attr("data-id");
      $.ajax({
          url: '<?php echo base_url(); ?>Turno/finalizarAtencionTicket/'+idTicket,
          type:'POST',
          dataType:'json',
          success: function(respuesta) {
            if(respuesta.response === 1){
              actualizarLlamar(respuesta.mensaje);
              setTimeout($('#llamarTicket').modal('hide'), 3000);
              location.reload();
            }else if(respuesta.response == 2){
              actualizarMensajeLlamada(respuesta.mensaje);
            }else{
              actualizarLlamar(respuesta.mensaje);
            }
          },
          error: function(xhr, status) {
                console.log("No se ha podido obtener la información");
            }
        });
  });
  $(".continuarAtencion").click(function(){
    var _self = $(this);
    var idUsuario = _self.attr("data-id");
    var idZona = _self.attr("data-id-zona");
    console.log("CONTINUA DE ATENCION ", idUsuario);
    $.ajax({
          url: '<?php echo base_url(); ?>Usuario/continuarAtencion/'+idUsuario+"/"+idZona,
          type:'POST',
          dataType:'json',
          success: function(respuesta) {
            if(respuesta.response === 1){
              console.log("cambiar estado");
              location.reload();
            }else{
              console.log("nada");
            }
          },
          error: function(xhr, status) {
                console.log("No se ha podido obtener la información");
            }
        });
  });
  $(".pausarAtencion").click(function(){
    var _self = $(this);
    var idUsuario = _self.attr("data-id");
    var idZona = _self.attr("data-id-zona");
    $.ajax({
          url: '<?php echo base_url(); ?>Usuario/pausarAtencion/'+idUsuario+"/"+idZona,
          type:'POST',
          dataType:'json',
          success: function(respuesta) {
            if(respuesta.response === 1){
              location.reload();
            }else{
              console.log("Sigue en pausa");
            }
          },
          error: function(xhr, status) {
                console.log("No se ha podido obtener la información");
            }
        });
  });
</script>
</div>