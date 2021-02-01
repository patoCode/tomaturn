<style>
	@page {
	    /*margin: 2cm 2cm 4.5cm 2cm;*/
	    margin: 2in 4in 4in;
	    counter-increment: page;
	}
	html {
		margin: 0;
		padding: 0;
	}
	body {
	  	font-family: sans-serif;
        margin: 1.5cm;
        text-align: justify;
        counter-reset: page;
	}
	hr {
	  border: 0;
	  margin: 0;
	  padding: 0;
	  page-break-after: always;
	}
	table.report-table {
	  border: 1px solid #696969;
	  width: 100%;
	  text-align: left;
	  border-collapse: collapse;
	}
	table.report-table td, table.report-table th {
	  border: 1px solid #AAAAAA;
	  padding: 3px 2px;
	}
	table.report-table tbody td {
	  font-size: 12px;
	  /*font-weight: bold;*/
	}
	table.report-table thead {
	  background: #BDBDBD;
	  border-bottom: 2px solid #444444;
	}
	table.report-table thead th {
	  font-size: 12px;
	  font-weight: bold;
	  color: #000000;
	  text-align: center;
	  border-left: 2px solid #D0E4F5;
	}
	table.report-table thead th:first-child {
	  border-left: none;
	}

	.centrado{
		text-align: center;
		display: block;
	}
	.titulo{
		text-transform: uppercase;
		font-size: 15px;
		font-weight: bold;
		margin-bottom: 0;
	}
	.filtros{
		font-size: 12px;
		font-weight: bold;
		margin-bottom: 5px;
	}
	.footer {
        position: fixed;
        bottom: 5px;
        left: 0;
        right: 0;
        height: 40px;
        vertical-align: middle;
        margin: 0 35px;
    }
    .footer table{
		width: 100%;
		font-size: 9px;
		font-weight: bold;
		color: #52565e;
		text-align: center;
		padding: 0;
		margin: 0;
	}
	.numero-pagina-container{
	}
	.numero-pagina{
		text-align: right;
	}
	.numero-pagina:after {
    	content:counter(page) ' de _PGC';
    }
</style>