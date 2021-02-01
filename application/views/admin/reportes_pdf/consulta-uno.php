<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<?php $this->load->view('admin/reportes_pdf/style'); ?>
</head>
<body>
 	<h3 class="centrado titulo">reporte de tickets emitidos por fecha</h3>
	<span class="centrado filtros"> Desde: <?php echo $filtros['fecha_inicio'] ?> | Hasta: <?php echo $filtros['fecha_fin'] ?> | Estado: <?php echo $filtros['estado'] ?></span>
   <?php if($result != null): ?>
   <table class="report-table">
   	<thead>
	    <tr>
			 <th>Ticket</th>
			 <th>Zona</th>
			 <th>Categoria</th>
			 <th>Fecha Impresion</th>
			 <th>Fecha atencion</th>
			 <th>Estado</th>
	    </tr>
   	</thead>
   	<tbody>
	    <?php foreach ($result as $ticket): ?>
		<tr>
		 	<td><?php echo $ticket->CODIGO; ?> </td>
		 	<td><?php echo $ticket->zona; ?></td>
		 	<td><?php echo $ticket->categoria; ?></td>
		 	<td><?php echo format_date_view($ticket->FECHA_IMPRESION).' '.$ticket->HORA_IMPRESION; ?></td>
		 	<td><?php echo format_datetime_view($ticket->FECHA_MOD); ?></td>
		 	<td><?php echo estado_literal($ticket->ESTADO); ?></td>
		</tr>
	    <?php endforeach;?>

   	</tbody>
	</table>
	<?php else: ?>
		<h1>NO EXISTEN RESULTADOS</h1>
	<?php endif; ?>
	<?php $this->load->view('admin/reportes_pdf/footer-pdf'); ?>
</body>
</html>