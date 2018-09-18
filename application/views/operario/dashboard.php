<?php $this->load->view('commons/header');	?>
<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4">ATENCI&Oacute;N</h1>
  <h3><?php echo $this->session->userdata('username'); ?></h3>
</div>
<div class="container">

<div class="row">
          <div class="col-md-12">
          	<a href="#" class="btn btn-dark btn-lg btn-block btn-huge llamar" data-id="<?php echo $zona; ?>">

          		<span class="oi oi-icon-bell" title="icon bell" aria-hidden="true"></span> LLAMAR
          	</a>
        </div>
</div>

<br>
<br>
<br>
<a href="<?php echo base_url();?>Turno" class="btn btn-dark btn-sm btn-huge">
  <span class="oi oi-icon-bell" title="icon bell" aria-hidden="true"></span> Atrás
</a>
<br>
<br><br>


      

       <!--  <h6 class="border-bottom border-gray pb-2 mb-0">Historial de atención</h6>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&amp;bg=007bff&amp;fg=007bff&amp;size=1" alt="32x32" class="mr-2 rounded" style="width: 32px; height: 32px;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2232%22%20height%3D%2232%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2032%2032%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_165cadd42a5%20text%20%7B%20fill%3A%23007bff%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A2pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_165cadd42a5%22%3E%3Crect%20width%3D%2232%22%20height%3D%2232%22%20fill%3D%22%23007bff%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2212.166666746139526%22%20y%3D%2216.9%22%3E32x32%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true">
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">TICKET Nro. XXXXX</strong>            
          </p>
        </div>        
        <small class="d-block text-right mt-3">
          <a href="#">ver todos</a>
        </small> -->
      


<?php $this->load->view('commons/modal_llamar'); ?>
<?php $this->load->view('commons/footer'); ?>
<script>
  $('.llamar').click(function(){
      var _self = $(this);
      var id_zona = _self.attr("data-id");
      $('.finalizarModal').prop('disabled', true);
      $.ajax({
          url: '<?php echo base_url(); ?>Turno/pedirTicket/'+id_zona,
          type:'POST',
          dataType:'json',
          success: function(respuesta) {
            if(respuesta.response === 1){              
              llenarModalLlamar(respuesta.ticket, respuesta.llamada);
              $('#llamarTicket').modal('show');              
            }else{              
              llenarMensaje(respuesta.mensaje);
              $('#mensajeModal').modal('show');
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
              actualizarLlamar(respuesta.llamada);
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
  function actualizarLlamar(llamada) {
      $('#llamarTicket').find('#nroLlamada').html("");
      $('#llamarTicket').find('#nroLlamada').html('LLAMADA # '+llamada);
  }
  function actualizarMensajeLlamada(mensaje){
      $('#llamarTicket').find('#llamadaMensaje').html(""); 
      $('#llamarTicket').find('#llamadaMensaje').html(mensaje); 
  }
  // ATENDER
  $('.atenderModal').click(function(){
    var _self = $(this);
    var idTicket = _self.attr("data-id");  
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
</script>
</div>