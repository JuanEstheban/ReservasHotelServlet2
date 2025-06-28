<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmación de Reserva</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-image: url('https://images.unsplash.com/photo-1501117716987-c8e1ecb210d9');
            background-size: cover;
            background-position: center;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .confirmation-box {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
            width: 450px;
            text-align: center;
        }

        .confirmation-box h2 {
            color: #2f3640;
            margin-bottom: 20px;
        }

        .confirmation-box p {
            font-size: 16px;
            color: #444;
            margin-bottom: 25px;
        }

        .confirmation-box a {
            text-decoration: none;
            color: white;
            background-color: #44bd32;
            padding: 10px 20px;
            border-radius: 6px;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        .confirmation-box a:hover {
            background-color: #4cd137;
        }

        .confirmation-box i {
            color: #44bd32;
            font-size: 48px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="confirmation-box">
        <i class="fa fa-check-circle"></i>
        <h2>¡Reserva Exitosa!</h2>
        <p><%= request.getAttribute("mensaje") %></p>
        <a href="formulario.jsp"><i class="fa fa-arrow-left"></i> Volver al formulario</a>
    </div>
</body>
</html>
