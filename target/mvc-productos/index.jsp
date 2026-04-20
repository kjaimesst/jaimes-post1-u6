<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio - Sistema Productos</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>

<body>

<div class="contenedor-inicio">

    <h1>Sistema de Inventario</h1>

    <p>Selecciona un modulo</p>

    <div class="menu">

        <a href="${pageContext.request.contextPath}/productos"
           class="btn">
             Ver productos
        </a>

        <a href="${pageContext.request.contextPath}/productos?accion=formulario"
           class="btn">
            + Agregar producto
        </a>

    </div>

</div>

</body>
</html>