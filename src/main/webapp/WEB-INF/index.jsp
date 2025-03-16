<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista Login ARENITA</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #fffbe6;
        }

        .image-container {
            border: 2px solid red;
            min-height: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-color: #f8f9fa;
        }

        .login-button {
            padding: 20px;
            border: 2px solid #ffd700;
            background-color: #fff;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            transition: background-color 0.3s;
            text-decoration: none; /* Para los enlaces */
            color: #000; /* Color del texto */
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 5px;
        }

        .login-button:hover {
            background-color: #fffae6;
        }

        .info-text p {
            margin-bottom: 15px;
        }
    </style>
</head>

<body>

    <!-- Navbar Bootstrap style -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light py-3 shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">ARE NITA</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="navbarContent">
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a href="#" class="btn btn-outline-dark me-2">Info</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="btn btn-outline-dark me-2">Participa</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="btn btn-outline-dark me-2">Empresas Afiliadas</a>
                    </li>
                    <li class="nav-item">
                        <a href="/registroUsuario" class="btn btn-dark me-2">Registro Usuario</a>
                    </li>
                    <li class="nav-item">
                        <a href="/registroEmpresa" class="btn btn-dark">Registro Empresa</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main content -->
    <div class="container my-5">
        <div class="row align-items-center">

            <!-- Imagen motivacional -->
            <div class="col-md-6 mb-4 mb-md-0">
                <div class="image-container">
                    <p>Imagen motivacional de arena</p>
                </div>
            </div>

            <!-- Info + botones -->
            <div class="col-md-6">
                <div class="info-text mb-4">
                    <h2 class="fw-bold">Bienvenido a ARENITA</h2>
                    <p>Contribuye con tu granito de arena a mejorar el mundo. Súmate como usuario o como empresa.</p>
                    <p>Accede a nuestras plataformas según tu perfil:</p>
                </div>

                <div class="d-flex flex-column flex-md-row gap-3">
                    <!-- Botón de login usuarios -->
                    <a href="/loginUsuario" class="login-button flex-fill">Log in Usuarios</a>

                    <!-- Botón de login empresas -->
                    <a href="/loginEmpresa" class="login-button flex-fill">Log in Empresas</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
