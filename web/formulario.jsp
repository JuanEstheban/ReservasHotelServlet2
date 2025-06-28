<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de Reservación</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-image: url('https://images.unsplash.com/photo-1542314831-068cd1dbfeeb');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
            width: 400px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2f3640;
        }

        .input-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #2f3640;
            font-weight: 500;
        }

        .input-icon {
            position: relative;
        }

        .input-icon i {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #718093;
        }

        .input-icon input {
            width: 100%;
            padding: 10px 10px 10px 35px;
            border: 1px solid #dcdde1;
            border-radius: 6px;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #44bd32;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #4cd137;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Reserva tu Habitación</h2>
        <form action="ReservaServlet" method="post">
            <div class="input-group">
                <label for="nombre">Nombre:</label>
                <div class="input-icon">
                    <i class="fa fa-user"></i>
                    <input type="text" name="nombre" required>
                </div>
            </div>

            <div class="input-group">
                <label for="correo">Correo:</label>
                <div class="input-icon">
                    <i class="fa fa-envelope"></i>
                    <input type="email" name="correo" required>
                </div>
            </div>

            <div class="input-group">
                <label for="fechaEntrada">Fecha de Entrada:</label>
                <div class="input-icon">
                    <i class="fa fa-calendar-plus"></i>
                    <input type="date" name="fechaEntrada" required>
                </div>
            </div>

            <div class="input-group">
                <label for="fechaSalida">Fecha de Salida:</label>
                <div class="input-icon">
                    <i class="fa fa-calendar-minus"></i>
                    <input type="date" name="fechaSalida" required>
                </div>
            </div>

            <input type="submit" value="Reservar">
        </form>
    </div>
</body>
</html>
