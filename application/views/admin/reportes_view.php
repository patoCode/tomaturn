<?php $this->load->view('commons/header'); ?>
<body>
	<?php $this->load->view('commons/menu') ?>
	<div class="container p-3">
		<h1>reportes</h1>
		<div class="row">
			<div class="col-md-12">
				<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
				  <li class="nav-item">
				    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">reporte 1</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">reporte 2</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">reporte 3</a>
				  </li>
				</ul>
				<div class="tab-content" id="pills-tabContent">
				  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
				  	<h3>Reporte 1</h3>
				  	<form action="<?php echo base_url() ?>Reporte/consultaUno" method="POST">
				  		<div class="row mb-2">
				  			<div class="col-auto">
					  			<select name="estado" id="estado" class="form-control">
					  				<option value=""> -- Estados -- </option>
					  				<option value="0">Todos</option>
					  				<option value="4">Atendidos - Finalizados</option>
					  				<option value="6">Abandonados</option>
					  			</select>
				  			</div>
				  			<div class="col-auto">
					  			<input type="text" name="fini" class="fecha form-control" placeholder="Fecha Inicio">
				  			</div>
				  			<div class="col-auto">
					  			<input type="text" name="ffin" class="fecha form-control" placeholder="Fecha Fin">
				  			</div>
				  			<div class="col-auto">
					  			<select name="formato" id="" class="form-control">
					  				<option value="1">EXCEL</option>
					  				<option value="2">PDF</option>
					  			</select>
				  			</div>
				  		</div>
				  		<div class="row">
					  		<div class="col-auto">
					  			<input class="btn btn-success btn-lg btn-block" type="submit" value="enviar">
					  		</div>
				  		</div>
				  	</form>
				  </div>
				  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

				  	<form action="<?php echo base_url() ?>Reporte/consultaDos">
				  		<div class="row mb-2">
				  			<div class="col-auto">
					  			<select name="select" id="operario" class="form-control" style="width: 200px">
					  				<option value="1">EXCEL</option>
					  				<option value="2">PDF</option>
					  			</select>
				  			</div>
				  			<div class="col-auto">
					  			<input type="text" name="fini" class="fecha form-control" placeholder="Fecha Inicio">
				  			</div>
				  			<div class="col-auto">
					  			<input type="text" name="ffin" class="fecha form-control" placeholder="Fecha Fin">
				  			</div>
				  			<div class="col-auto">
					  			<select name="formato" id="" class="form-control">
					  				<option value="1">EXCEL</option>
					  				<option value="2">PDF</option>
					  			</select>
				  			</div>
				  		</div>
				  		<div class="row">
					  		<div class="col-auto">
					  			<input class="btn btn-success btn-lg btn-block" type="submit" value="enviar">
					  		</div>
				  		</div>
				  	</form>
				  </div>
				  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
				</div>
			</div>
		</div>
	<?php $this->load->view('commons/footer') ?>
	</div>
	<script>
		$('#operario').select2({
			theme: "classic"
		});
		$(".fecha").datepicker({
			language: "es",
	        todayBtn: "linked",
	        clearBtn: true,
	        format: "dd/mm/yyyy",
	        multidate: false,
	        todayHighlight: true
		});

	</script>
</body>

