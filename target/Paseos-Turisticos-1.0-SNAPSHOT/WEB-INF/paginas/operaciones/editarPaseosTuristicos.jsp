<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AYRE - Paseos Turisticos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="./css/style.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500&family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/382381b436.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <form action = "${pageContext.request.contextPath}/servletControlador?accion=modificar&idActividad=${paseos_turisticos.idActividad}" method="POST" class="was-validated pt-4 mt-2">
           <jsp:include page="/WEB-INF/paginas/comunes/editarNav.jsp"/>
            <section id=details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar actividad</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" required="" value="${paseos_turisticos.nombre}"> 
                                    </div>
                                    <div class="form-group">
                                        <label for="diaHorario">Dia y horario</label>
                                        <input type="text" class="form-control" name="diaHorario" value="${paseos_turisticos.diaHorario}"> 
                                    </div>
                                    <div class="form-group">
                                        <label for="ubicacion">Ubicación</label>
                                        <input type="text" class="form-control" name="ubicacion" value="${paseos_turisticos.ubicacion}"> 
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcion">Descripción</label>
                                        <input type="text" class="form-control" name="descripcion" value="${paseos_turisticos.descripcion}"> 
                                    </div>
                                    <div class="form-group">
                                        <label for="valor">Valor</label>
                                        <input type="text" class="form-control" name="valor" value="${paseos_turisticos.valor}"> 
                                    </div>
                                    <div class="form-group">
                                        <label for="imagen">Link de imagen</label>
                                        <input type="text" class="form-control" name="imagen" value="${paseos_turisticos.imagen}"> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>

        <jsp:include page="/WEB-INF/paginas/comunes/pieDePagina.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./js/scripts.js"></script>
    </body>
</html>