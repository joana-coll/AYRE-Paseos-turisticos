<section id="actions" class="pb-5 mb-5">
    <nav class="navbar fixed-top navbar-expand-lg text-white bg-azulmarino">
        <div class="container" style="max-width: 97%;">
            <a class="navbar-brand ps-4 p-2 fs-3" href="index.html">
                <img src="./img/logo.png" alt="" width="250px" height="auto" class="d-inline-block align-text-center">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon pr-2"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 end-0 pe-4 p-2">
                    <li class="nav-item">
                        <a href="index.jsp" class="text-white">
                            <i class="fas fa-arrow-left"></i> Regresar al inicio
                        </a>
                    </li>
                    <li class="nav-item">
                        <button type="submit" class="link-button text-white">
                            <i class="fas fa-check"></i> Guardar modificación
                        </button>
                    </li>
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/servletControlador?accion=eliminar&idActividad=${paseos_turisticos.idActividad}" class="text-white">
                            <i class="fas fa-trash"></i> Eliminar actividad
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</section>
