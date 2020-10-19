<?php $this->load->view('commons/header');	?>
<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4">Zonas</h1>
  	<p class="lead">
  		ASIGNADAS
	</p>
</div>
<div class="container">

  		<?php if(count($zonas) > 0 ): ?>
  			<div class="row row-cols-1 row-cols-md-2">
			<?php foreach ($zonas as $zona):?>
			<div class="col mb-4">
		        <div class="card">
					<div class="card-body">
							<a href="<?php echo base_url(); ?>Turno/dashboard/<?php echo $zona->ID_ZONA ?>" type="button" class="btn btn-lg btn-block btn-outline-primary imprimir" data-id="<?php echo $zona->ID_ZONA ?>"><?php echo $zona->NOMBRE; ?></a>
					</div>
		        </div>
			</div>
			<?php endforeach; ?>
			</div>
		<?php endif; ?>


	<?php $this->load->view('commons/footer'); ?>
	<?php $this->load->view('commons/modal_ticket'); ?>
</div>
