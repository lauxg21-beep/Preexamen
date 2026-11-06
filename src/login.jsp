<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KUMON - Ingreso IA Generativa</title>
    <!-- CSS de Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
   
    <!--css -->
    <style>
        .box {
            max-width: 360px;
            margin: 50px auto;
            border-radius: 14px;
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0,0,0,.12);
            font-family: sans-serif;
            background: #fff;
        }

        .sky {
            height: 120px;
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            position: relative;
            text-align: center;
            color: #fff;
            padding-top: 35px;
        }

        .sky h2 {
            margin: 0;
            font-size: 20px;
        }

        .sky p {
            margin: 4px 0 0;
            font-size: 12px;
            opacity: .7;
        }

        .sky::after {
            content: '';
            position: absolute;
            bottom: -1px;
            left: 0;
            width: 100%;
            height: 30px;
            background: #fff;
            border-radius: 50% 50% 0 0;
        }

        .body {
            padding: 24px;
        }

        .body label {
            display: block;
            font-size: 13px;
            margin: 12px 0 4px;
            color: #444;
        }

        .body .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 14px;
            transition: all 0.2s ease;
        }

        .body .form-control:focus {
            outline: none;
            box-shadow: none;
            border-color: #302b63;
        }

        .body .btn-custom {
            width: 100%;
            margin-top: 18px;
            padding: 11px;
            background: #302b63;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            cursor: pointer;
            transition: opacity 0.2s ease;
        }

        .body .btn-custom:hover {
            opacity: .85;
            color: #fff;
        }
    </style>
</head>
<body class="bg-light">

    <div class="box">
        <div class="sky">
            <h2>KUMON - IA</h2>
            <p>Registro de Tips GenAI</p>
        </div>

        <div class="body">
            <form id="loginForm">
                <div>
                    <label>Nombre del Tip</label>
                    <input type="text" id="nombre" class="form-control" placeholder="Ej. Prompts Clave" required>
                </div>

                <div>
                    <label>Email de Responsable</label>
                    <input type="email" id="email" class="form-control" placeholder="user_name@kumon.com" required>
                </div>

                <div>
                    <label>Contraseña / Token</label>
                    <input type="password" id="password" class="form-control" placeholder="••••••••" required>
                </div>

                <button type="submit" class="btn btn-custom">Guardar Tip</button>
            </form>
        </div>
    </div>

    <!-- JS de Bootstrap 5 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>