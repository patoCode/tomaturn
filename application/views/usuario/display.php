<?php $this->load->view('commons/header');	?>
 <meta http-equiv="refresh" content="3" >
<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4"><?php echo BIENVENIDO_DISPLAY; ?></h1>
  	<h3 class="display-6">
  		ZONA DE ESPERA
	</h3>
</div>
<div class="container">
      <div class="card-deck mb-3 text-center">
      	<?php foreach ($tickets as $tk):?>
        <div class="card mb-2 box-shadow alert 
        	<?php if($tk->blink == ON_DISPLAY_BLINK): ?>
        		alert-danger blink_me
			<?php elseif($tk->blink == ON_DISPLAY_TRUE): ?>
				alert-success
			<?php endif; ?>
				">
			<div class="card-body">				
		            <ul class="list-unstyled mt-3 mb-4">
		              <li>Ticket <span id="siguiente"><?php echo $tk->ticket_codigo ?></span></li>
		              <li>Pase a <span id="estacionAtencion"><?php echo $tk->estacion ?></span></li>		              
		            </ul>
			</div>
        </div>
		<?php endforeach; ?>
      </div>

<?php $this->load->view('commons/footer'); ?>
<?php $this->load->view('commons/modal_ticket'); ?>
<script>
	
	function blinker() {
	    $('.blink_me').fadeOut(400);
	    $('.blink_me').fadeIn(400);
	}

	setInterval(blinker, 1000);
</script>
</div>

