<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="es_AR"/>
<section id="libros">
    <div class="container">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <c:forEach var="paseos_turisticos" items="${actividad}">
                <div class="col">
                    <div class="card h-100">
                        <img src="${paseos_turisticos.imagen}" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title border-bottom border-top border-dark p-4 text-center">${paseos_turisticos.nombre}</h5>
                            <p class="card-text">${paseos_turisticos.descripcion}</p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <i class="fa-solid fa-calendar"></i> ${paseos_turisticos.diaHorario}<br>
                                <i class="fa-solid fa-location-pin"></i> ${paseos_turisticos.ubicacion}<br>
                                <i class="fa-solid fa-comment-dollar"></i> ${paseos_turisticos.valor}<br>
                            </li>
                        </ul>
                            
                        <div class="card-footer bg-dark text-end text-white">
                            <a href="${pageContext.request.contextPath}/servletControlador?accion=editar&idActividad=${paseos_turisticos.idActividad}">
                                <button type="button" class="btn btn-light rounded-circle"><i class="fa-solid fa-pen"></i></button>  
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach> 
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/paginas/operaciones/agregarPaseosTuristicos.jsp"/>