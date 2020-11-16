<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Download Bootstrap to get the compiled CSS and JavaScript, source code, or include it with your favorite package managers like npm, RubyGems, and more.">
	<meta name="author" content="ET - ENDE TECNOLOGIAS">
	<title> <?php echo NOMBRE_SIS; ?></title>
	<link rel="icon" type="image/png" href="<?php echo base_url()?>public/tomaturn/iconos/main.png"/>

	<link href="<?php echo base_url()?>public/vista/css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="<?php echo base_url()?>public/vista/css/fontawesome/css/all.css" rel="stylesheet">
	<link rel="stylesheet" href="<?php echo base_url()?>public/vista/plugins/datepicker/css/bootstrap-datepicker.standalone.css">
	  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />


	<link href="<?php echo base_url()?>public/vista/css/ticket.css" rel="stylesheet">
	<?php if(isset($output)): ?>
	    <?php foreach($css_files as $file): ?>
	        <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
	    <?php endforeach; ?>
	<?php endif; ?>
</head>