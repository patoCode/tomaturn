<!-- Modal -->
<div class="modal fade" id="llamarTicket" tabindex="-1" role="dialog" aria-hidden="false" data-backdrop="static">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="categoriaName">
          <i class="fa fa-ticket-alt"></i> TICKET
          <span id="ticketNro" class="badge badge-primary"></span>
        </h4>
        <h4>
          <i class="fa fa-bell"></i>
          <span id="nroLlamada" class="badge badge-info"></span>
        </h4>

      </div>
      <div class="modal-body" id="detalleTicket">
          <h4 id="accionTicket"></h4>
          <div id="llamadaMensaje" class="alert alert-danger" role="alert"></div>
          <div class="row">

            <div class="col-md-3">
            <button class="btn btn-info btn-md btn-block btn-huge llamarModal" data-id="">
              <i class="fa fa-bell"></i>
              LLAMAR
            </button>
          </div>
          <div class="col-md-3">
            <button class="btn btn-primary btn-md btn-block btn-huge atenderModal" data-id="">
              <i class="fas fa-clock"></i>
              ATENDER
            </button>
          </div>
          <div class="col-md-3">
            <button class="btn btn-success btn-md btn-block btn-huge finalizarModal" data-id="">
              <i class="fas fa-check-circle"></i> FINALIZAR
            </button>
          </div>
          <div class="col-md-3">
            <button class="btn btn-warning btn-md btn-block btn-huge derivarModal" data-id="">
              <i class="fas fa-angle-double-right"></i> DERIVAR
            </button>
          </div>
          </div>




      </div>





    </div>
  </div>
</div>
