<?php $this->load->view('commons/header', $output); ?>
<body>
	<?php $this->load->view('commons/menu') ?>
    <div class="container-fluid p-3">
        <?php if(isset($output)): ?>
            <div style="padding: 10px">
        		<?php echo $output; ?>
            </div>
        <?php else: ?>
            <h1>Bienvenido: <?php echo $this->session->userdata('username'); ?></h1>
        <?php endif; ?>

        <?php $this->load->view('commons/footer') ?>
        <?php if(isset($output)): ?>
        <?php foreach($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>
        <?php endif; ?>
    </div>
</body>
</html>
