<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista Login ARENITA</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        html, body {
            height: 100%;
            margin: 0;
        }

        body {
            display: flex;
            flex-direction: column;
            background-color: #fffbe6;
        }

        main {
            flex: 1;
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
        }

        .login-button:hover {
            background-color: #fffae6;
        }

        .info-text p {
            margin-bottom: 15px;
        }

        footer {
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
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
                        <a href="#" class="btn btn-dark">Registro</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Contenido Principal -->
    <main>
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
                        <h2 class="fw-bold">Info presentación</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan.</p>
                        <p>Proin fermentum tincidunt diam, eget viverra nulla.</p>
                    </div>

                    <div class="d-flex flex-column flex-md-row gap-3">
                        <div class="login-button flex-fill">Log in usuarios</div>
                        <div class="login-button flex-fill">Log in empresas</div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-light text-center text-lg-start shadow-sm">
        <div class="container p-4">
            <div class="row text-center text-md-start">
                <div class="col-md-4 mb-3">
                    <h6 class="text-uppercase fw-bold">Sobre Nosotros</h6>
                    <p>Contacto</p>
                </div>
                <div class="col-md-4 mb-3">
                    <h6 class="text-uppercase fw-bold">Medios de Pago</h6>
                    <p>WEBPAY - MACH - MERCADO PAGO - CRYPTO</p>
                </div>
                <div class="col-md-4 mb-3">
                    <h6 class="text-uppercase fw-bold">Legal</h6>
                    <p>Términos, condiciones y privacidad</p>
                </div>
            </div>
        </div>
        <div class="text-center p-3 bg-dark text-white">
            © 2025 AreNita Crowdfunding
        </div>
    </footer>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
