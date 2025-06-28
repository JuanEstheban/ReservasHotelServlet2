<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Formulario de Reservación</title></head>
<body>
    <h2>Formulario de Reserva</h2>
    <form action="ReservaServlet" method="post">
        Nombre: <input type="text" name="nombre"><br><br>
        Correo: <input type="email" name="correo"><br><br>
        Fecha Entrada: <input type="date" name="fechaEntrada"><br><br>
        Fecha Salida: <input type="date" name="fechaSalida"><br><br>
        <input type="submit" value="Reservar">
    </form>
</body>
</html>
