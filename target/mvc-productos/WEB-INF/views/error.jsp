<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>

<h1>Error en la aplicación</h1>

<p>${mensaje}</p>

<a href="${pageContext.request.contextPath}/productos">
    Volver al inicio
</a>

</body>
</html>