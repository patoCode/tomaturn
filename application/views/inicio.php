<?php $this->load->view('commons/header');	?>
<div class="jumbotron p-3 mb-1 text-center font-weight-bold">
	<div class="container">
		<h3 class="display-2">
			<img src="<?php echo base_url()?>public/tomaturn/iconos/main.png" width="150" height="150" class="d-inline-block align-middle" alt="">
			<?php echo NOMBRE_SIS; ?>
		</h3>
	</div>
</div>
<div class="alert alert-primary text-center" role="alert">
	<?php echo date("d/m/Y H:i:s"); ?>
</div>
<div class="container">
<div class="row">
	<div class="col-md-6 mb-2 box-shadow">
		<div class="card">
			<div class="card-header">
				<h3 class="my-0 font-weight-normal">LOGIN</h3>
			</div>
			<div class="card-body">
				<h3 class="card-title pricing-card-title">ZONA DE ADMINISTRACION</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta labore, perspiciatis culpa. Nostrum unde sit tempora! Praesentium autem porro incidunt minima libero tempore consequuntur, excepturi quia facilis eius, ut! Libero!
				</p>
				<a href="<?php echo base_url(); ?>Login/" type="button" class="btn btn-lg btn-block btn-outline-primary">
					<i class="fas fa-sign-in-alt"></i>
					ACCEDER
				</a>
			</div>
		</div>
    </div>

        <div class="col-md-6 mb-2 box-shadow">
        	<div class="card">
			<div class="card-header">
				<h3 class="my-0 font-weight-normal">TICKETERO</h3>
			</div>
			<div class="card-body">
				<h3 class="card-title pricing-card-title">Dispensador de tickets</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure consequuntur, iste libero ducimus quaerat natus, ratione voluptatum harum, numquam eius vel itaque perferendis soluta dolorem, quis minima sed unde praesentium!
				</p>
				<a href="<?php echo base_url(); ?>Ticketero" type="button" class="btn btn-lg btn-block btn-outline-primary"><i class="fas fa-sign-in-alt"></i>
					ACCEDER
				</a>
			</div>
			</div>
        </div>

      	<div class="col-md-12 mb-2 box-shadow">
      		<div class="card">
			<div class="card-header">
				<h3 class="my-0 font-weight-normal">DISPLAY</h3>
			</div>
			<div class="card-body">
				<h3 class="card-title pricing-card-title">Pantalla de llamadas</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure consequuntur, iste libero ducimus quaerat natus, ratione voluptatum harum, numquam eius vel itaque perferendis soluta dolorem, quis minima sed unde praesentium!
				</p>

				<a href="<?php echo base_url(); ?>display" type="button" class="btn btn-lg btn-block btn-outline-primary">
					<i class="fas fa-sign-in-alt"></i>
					ACCEDER
				</a>
			</div>
			</div>
        </div>


</div>


<?php $this->load->view('commons/footer'); ?>

</div>
