<?php $this->load->view('commons/header');	?>
<div class="container">
	<?php if(count($categorias) > 0): ?>
      <div class="card-deck mb-3 text-center">
      	<?php foreach ($categorias as $categoria):?>
        <div class="card mb-2 box-shadow">
			<div class="card-header">
				<h4 class="card-title pricing-card-title"><?php echo $categoria->CODIGO;?></h4>
			</div>
			<div class="card-body">
				<h1 class="my-0 font-weight-normal"><?php echo $categoria->NOMBRE; ?></h1>
				<p>
					<?php $categoria->DESCRIPCION; ?>
				</p>
				<button type="button" class="btn btn-lg btn-block btn-outline-dark imprimir" data-id="<?php echo $categoria->ID_CATEGORIA_ZONA; ?>">
					<i class="fa fa-print"></i>
				</button>
			</div>
        </div>
		<?php endforeach; ?>
      </div>

<?php $this->load->view('commons/footer'); ?>
<?php $this->load->view('commons/modal_ticket'); ?>
<script>
	$('.imprimir').click(function(){
		var _self = $(this);
		var id_categoria = _self.attr("data-id");
		$.ajax({
				url: '<?php echo base_url(); ?>Ticket/create/'+id_categoria,
				type:'POST',
				dataType:'json',
				success: function(respuesta) {
					if(respuesta.response === 1){
						console.log("IMPRESO EL TICKET " + respuesta.ticket);
						modalTicketReset();
						modalPreviewTicket(respuesta);
						$('#ticket').modal('show');
						setInterval(function(){
							window.location.href = "<?php echo base_url().'Ticketero' ?>";
						}, 5000);
					}else{
						console.log("ERROR " + respuesta);
					}
				},
				error: function(xhr, status) {
			        console.log("No se ha podido obtener la información");
			    }
			});
	});
	function modalTicketReset(){
		$('#ticket').find('#categoriaName').html("");
		$('#ticket').find('#ticketNro').html("");
	}
	function modalPreviewTicket(data){
		$('#ticket').find('#categoriaName').html("Categoria: " + data.categoria);
		$('#ticket').find('#ticketNro').html(" "+ data.ticket.codigo);
		$('#ticket').find('#fechaTK').html("Fecha: "+ data.ticket.fecha_impresion);
		$('#ticket').find('#horaTK').html("Hora: "+ data.ticket.hora_impresion);

	}
	function formatFecha(argument) {
		// body...
	}
</script>
<?php else:?>
	<?php echo "SIN CATEGORIAS";?>
<?php endif;?>
</div>
