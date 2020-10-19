<?php $this->load->view('commons/header');	?>
<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	<h1 class="display-4">ZONAS DE ATENCION</h1>
</div>
<div class="container">
      <div class="row">
				<?php foreach ($zonas as $zona):?>
					<div class="col-md-6 col-sm-6 col-xs-12">
						 <div class="card border-white mb-2">
							<div class="card-body">
								<a href="<?php echo base_url(); ?>Ticketero/categoriasZona/<?php echo $zona->ID_ZONA ?>" type="button" class="text-uppercase btn btn-lg btn-block btn-outline-dark p-4 mh-100" data-id="<?php echo $zona->ID_ZONA ?>"><?php echo $zona->NOMBRE; ?></a>
							</div>
						</div>
					</div>
				<?php endforeach; ?>
      </div>
<?php $this->load->view('commons/footer'); ?>
<?php $this->load->view('commons/modal_ticket'); ?>

</div>
