<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
      <a href="" class="navbar-brand" href="#">
        <img src="<?php echo base_url()?>public/tomaturn/iconos/main.png" width="50" height="50" class="d-inline-block align-middle" alt="">
        <?php echo NOMBRE_SIS; ?>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav justify-content-end w-100">
           <li class="nav-item">
            <a href="<?php echo base_url();?>Usuario/zona"
              class="nav-link btn btn-dark">
              Mis Zonas
            </a>
          </li>
           <li class="nav-item dropdown">
            <a class="nav-link btn btn-dark dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $this->session->userdata('username'); ?></a>
            <div class="dropdown-menu bg-success" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="<?php echo base_url();?>Login/logout">Salir</a>

            </div>
          </li>
        </ul>
      </div>
      <img class="mb-2" src="<?php echo base_url(); ?>public/image/LOGO_ENDE_TECNOLOGIAS_FO.png" alt="" width="100" height="45">
    </nav>

