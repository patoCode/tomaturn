<?php $this->load->view('commons/header'); ?>
<body>
  <div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <div class="card border-0 mt-5">
          <div class="card-header bg-secondary ">
            <h1 class="p-3 mb-2 text-dark">Operador</h1>
          </div>
          <div class="card-body p-0">
            <form class="form" action="<?php echo base_url()?>Login/checkOperarioLogin" method="POST">
                <label for="inputEmail" class="sr-only">Usuario</label>
                <input type="text" name="username" class="form-control" placeholder="Usuario" required="" autofocus="">
                <br>
                <label for="inputPassword" class="sr-only">Contraseña</label>
                <input type="password" name="password" class="form-control" placeholder="Contraseña" required="">
                <br>
                <button class="btn btn-lg btn-success btn-block" type="submit">
                  <i class="fas fa-sign-in-alt"></i>
                  Iniciar sesión
                </button>
            </form>
          </div>
        </div>

      </div>
    </div>
  </div>

<?php $this->load->view('commons/footer'); ?>

</body>

