<div class="modal fade" id="agregarPaseosTuristicos">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="model-title">Agregar actividad</h5>
            </div>
            <form action="${pageContext.request.contextPath}/servletControlador?accion=insertar" method="POST" class="was-validated">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" name="nombre" required=""> 
                    </div>
                    <div class="form-group">
                        <label for="diaHorario">Dia y horario</label>
                        <input type="text" class="form-control" name="diaHorario" required=""> 
                    </div>
                    <div class="form-group">
                        <label for="ubicacion">Ubicacion</label>
                        <input type="text" class="form-control" name="ubicacion" required=""> 
                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <input type="text" class="form-control" name="descripcion" required=""> 
                    </div>
                    <div class="form-group">
                        <label for="valor">Valor</label>
                        <input type="text" class="form-control" name="valor" required=""> 
                    </div>
                    <div class="form-group">
                        <label for="imagen">Link de imagen</label>
                        <input type="text" class="form-control" name="imagen" required=""> 
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" type="submit">
                        Guardar
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
