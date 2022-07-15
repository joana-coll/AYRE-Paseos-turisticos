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
                
        <jsp:include page="/WEB-INF/paginas/comunes/navegacion.jsp"/>
        
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>

        <jsp:include page="/WEB-INF/paginas/operaciones/listarPaseosTuristicos.jsp"/>
        
        <jsp:include page="/WEB-INF/paginas/comunes/pieDePagina.jsp"/>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./js/scripts.js"></script>
    </body>
</html>
