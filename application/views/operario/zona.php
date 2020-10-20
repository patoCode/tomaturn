<?php $this->load->view('commons/header');	?>
<?php $this->load->view('operario/menu_operador');  ?>
<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4">Zonas</h1>
  	<p class="lead">
  		ASIGNADAS
	</p>
</div>
<div class="container">

  		<?php if(count($zonas) > 0 ): ?>
			 <div class="row align-items-center">
				<?php foreach ($zonas as $zona):?>
					<div class="col-md-4 mb-2">
						<div class="card border-0">
							<div class="card-body">
								<div class="float-right badge <?php if($zona->cantidad_pendientes > 0){ ?> badge-success <?php }else{ ?> badge-warning <?php }?>font-weight-bold p-2">
									<h2>
										<?php echo $zona->cantidad_pendientes; ?>
									</h2>
								</div>
								<a href="<?php echo base_url(); ?>Turno/dashboard/<?php echo $zona->ID_ZONA ?>"
									type="button"
									class="py-5 rounded-0 text-uppercase font-weight-bold btn btn-dark btn-block btn-lg w-100"
									data-id="<?php echo $zona->ID_ZONA ?>">
										<?php echo $zona->NOMBRE; ?>

									</a>
							</div>
						</div>
					</div>
				<?php endforeach; ?>
      </div>
		<?php endif; ?>


	<?php $this->load->view('commons/footer'); ?>
	<?php $this->load->view('commons/modal_ticket'); ?>
</div>
