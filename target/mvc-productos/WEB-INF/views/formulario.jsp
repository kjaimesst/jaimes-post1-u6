<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario Producto</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>

<body>

<h1>
    <c:choose>
        <c:when test="${not empty producto}">
            Editar Producto
        </c:when>
        <c:otherwise>
            Nuevo Producto
        </c:otherwise>
    </c:choose>
</h1>

<form method="post" action="${pageContext.request.contextPath}/productos">

    <!-- OCULTO PARA CONTROL DE ACCIÓN -->
    <c:choose>
        <c:when test="${not empty producto}">
            <input type="hidden" name="accion" value="actualizar">
            <input type="hidden" name="id" value="${producto.id}">
        </c:when>
        <c:otherwise>
            <input type="hidden" name="accion" value="guardar">
        </c:otherwise>
    </c:choose>

    <label>Nombre:</label>
    <input type="text" name="nombre" required
           value="${producto.nombre != null ? producto.nombre : ''}">
    <br>

    <label>Categoría:</label>
    <input type="text" name="categoria"
           value="${producto.categoria != null ? producto.categoria : ''}">
    <br>

    <label>Precio:</label>
    <input type="number" name="precio" step="0.01" min="0" required
           value="${producto.precio != null ? producto.precio : ''}">
    <br>

    <label>Stock:</label>
    <input type="number" name="stock" min="0" required
           value="${producto.stock != null ? producto.stock : ''}">
    <br><br>

    <button type="submit">
        <c:choose>
            <c:when test="${not empty producto}">
                Actualizar
            </c:when>
            <c:otherwise>
                Guardar
            </c:otherwise>
        </c:choose>
    </button>

</form>

<br>

<a href="${pageContext.request.contextPath}/productos">Volver</a>

</body>
</html>