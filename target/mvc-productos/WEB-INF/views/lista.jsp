<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Productos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>

<h1>Inventario de Productos</h1>

<a href="${pageContext.request.contextPath}/productos?accion=formulario">
    Nuevo Producto
</a>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Categoria</th>
        <th>Precio</th>
        <th>Stock</th>
        <th>Acciones</th>
    </tr>

    <c:forEach var="p" items="${productos}">
        <tr>
            <td>${p.id}</td>
            <td>${p.nombre}</td>
            <td>${p.categoria}</td>
            <td>${p.precio}</td>
            <td>${p.stock}</td>
            <td>
                <a href="${pageContext.request.contextPath}/productos?accion=editar&id=${p.id}">
                    Editar
                </a>
                |
                <a href="${pageContext.request.contextPath}/productos?accion=eliminar&id=${p.id}"
                   onclick="return confirm('¿Eliminar ${p.nombre}?')">
                    Eliminar
                </a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>