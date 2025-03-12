<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AreNita - Crowdfunding</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .progress {
        height: 20px;
    }
    /* --- ESTILOS NAVBAR --- */
    .navbar {
        padding-top: 20px;
        padding-bottom: 20px;
    }

    .navbar-brand {
        font-size: 1.8rem;
        margin-right: 40px;
    }

    .navbar .form-control {
        width: 250px;
        margin-right: 20px;
    }

    .navbar-nav .nav-item {
        margin-left: 10px;
        margin-right: 10px;
    }

    .btn {
        padding: 8px 16px;
    }

    /* Espaciado general para el cuerpo */
    body {
        background-color: #f8f9fa;
    }

    /* Footer personalizado */
    footer {
        margin-top: 60px;
    }
</style>
</head>
<body>
    <!-- Navbar -->
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light py-3 shadow-sm">
    <div class="container">
        <a class="navbar-brand fw-bold" href="/">ARE NITA</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarContent">
            <!-- Buscador -->
            <form class="d-flex me-3 my-2 my-lg-0" role="search">
                <input class="form-control" type="search" placeholder="Buscar proyecto...">
            </form>

            <!-- Botones -->
            <ul class="navbar-nav mb-2 mb-lg-0 d-flex flex-column flex-lg-row align-items-lg-center">
                <li class="nav-item my-1 my-lg-0">
                    <a href="#" class="btn btn-outline-dark me-0 me-lg-2 w-100 w-lg-auto">Todos los proyectos</a>
                </li>
                <li class="nav-item my-1 my-lg-0">
                    <a href="#" class="btn btn-outline-dark me-0 me-lg-2 w-100 w-lg-auto">Aporte Voluntario</a>
                </li>
                <li class="nav-item my-1 my-lg-0">
                    <a href="#" class="btn btn-outline-dark me-0 me-lg-2 w-100 w-lg-auto">Mi Perfil</a>
                </li>
                <li class="nav-item my-1 my-lg-0">
                    <a href="#" class="btn btn-dark w-100 w-lg-auto">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


    <!-- Contenido principal -->
    <div class="container mt-5">
        <div class="row">
            <!-- Información del Proyecto -->
            <div class="col-md-6">
                <h2>${proyecto.nombreProyecto}</h2>
                <p><strong>Creador:</strong> ${proyecto.creador.nombre}</p>
                <p><strong>Lugar:</strong> ${proyecto.lugar}</p>
                <p><strong>Categoría:</strong> ${proyecto.categoria}</p>
                <div class="card p-4 shadow-sm">
                    <p><strong>${proyecto.montoRecaudado} USD</strong> recaudados</p>
                    <p><strong>Meta:</strong> ${proyecto.metaProyecto} USD</p>
                    <p>${proyecto.numeroAportantes} personas aportaron</p>
                    <!-- Barra de progreso -->
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: ${(proyecto.montoRecaudado / proyecto.metaProyecto) * 100}%;" aria-valuenow="${(proyecto.montoRecaudado / proyecto.metaProyecto) * 100}" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <!-- Botones -->
                <div class="mt-4">
                    <a href="https://www.mercadopago.cl" target="_blank" class="btn btn-success me-3">Donar</a>
                    <button class="btn btn-outline-primary" onclick="copiarEnlace()">Compartir</button>
                    <p id="mensajeCopiado" class="text-success mt-2" style="display: none;">¡Enlace copiado!</p>
                </div>
            </div>
            <!-- Imagen del Proyecto -->
            <div class="col-md-6 text-center">
                <img src="${proyecto.imagenProyecto}" alt="Imagen del Proyecto" class="img-fluid rounded shadow-sm" style="max-height: 300px;">
            </div>
        </div>
        <!-- Descripción -->
        <div class="mt-5">
            <h4>Descripción del proyecto:</h4>
            <p>${proyecto.descripcionProyecto}</p>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-light text-center text-lg-start shadow-sm">
        <div class="container p-4">
            <div class="row text-center text-md-start">
                <div class="col-md-4 mb-4">
                    <h6 class="text-uppercase fw-bold">Sobre Nosotros</h6>
                    <p>Contacto</p>
                </div>
                <div class="col-md-4 mb-4">
                    <h6 class="text-uppercase fw-bold">Medios de Pago</h6>
                    <p>WEBPAY - MACH - MERCADO PAGO - CRYPTO</p>
                </div>
                <div class="col-md-4 mb-4">
                    <h6 class="text-uppercase fw-bold">Legal</h6>
                    <p>Términos, condiciones y privacidad</p>
                </div>
            </div>
        </div>
        <div class="text-center p-3 bg-dark text-white">
            © 2025 AreNita Crowdfunding
        </div>
    </footer>

    <script>
        function copiarEnlace() {
            const enlace = window.location.href;
            navigator.clipboard.writeText(enlace).then(() => {
                document.getElementById('mensajeCopiado').style.display = 'block';
                setTimeout(() => { document.getElementById('mensajeCopiado').style.display = 'none'; }, 2000);
            }).catch(err => {
                alert('Hubo un error al copiar el enlace');
                console.error(err);
            });
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
