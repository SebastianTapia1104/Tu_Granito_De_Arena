<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tu Granito de Arena - Crowdfunding Solidario</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Roboto', sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    .container {
        flex: 1;
    }

    .navbar {
        padding-top: 15px;
        padding-bottom: 15px;
    }

    .navbar-brand {
        font-size: 2rem;
    }

    .hero {
        background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)), url('https://previews.123rf.com/images/lkeskinen/lkeskinen1701/lkeskinen170118866/70473027-se-aceptan-donaciones-sello-de-goma-dise%C3%B1o-de-grunge-con-los-rasgu%C3%B1os-polvo-los-efectos-se-pueden.jpg') center/cover no-repeat;
        color: white;
        padding: 100px 0;
        text-align: center;
    }

    .hero h1 {
        font-size: 3rem;
        font-weight: bold;
    }

    .espaciado-texto {
        line-height: 1.6;
        color: #333;
    }

    .valores-icon {
        font-size: 3rem;
        color: #0d6efd;
        margin-bottom: 15px;
    }

    .valores-card {
        transition: transform 0.3s ease;
    }

    .valores-card:hover {
        transform: translateY(-10px);
    }

    footer {
        background-color: #0d6efd;
        color: white;
        padding: 15px 0;
        text-align: center;
        margin-top: 40px;
    }

    .cta-button {
        background-color: #ffc107;
        color: #000;
        padding: 12px 24px;
        font-size: 1.2rem;
        border-radius: 50px;
        transition: background-color 0.3s;
    }

    .cta-button:hover {
        background-color: #e0a800;
    }

    .testimonio img {
        width: 90px;
        height: 90px;
        border-radius: 50%;
        object-fit: cover;
        margin-bottom: 10px;
    }

    .metricas {
        background-color: #fff;
        border-radius: 15px;
        padding: 30px;
        box-shadow: 0 0 20px rgba(0,0,0,0.05);
        margin-top: 40px;
    }

    .metricas h3 {
        font-size: 2rem;
        color: #0d6efd;
    }
</style>
</head>
<body>
    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="/">Granito de Arena</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item btn"><a class="nav-link btn" href="/">Inicio</a></li>
                </ul>
                <form class="d-flex me-3" role="search" action="/buscar" method="GET">
                    <input class="form-control" type="search" name="palabra" placeholder="Buscar proyecto...">
                </form>
            </div>
        </div>
    </nav>

    <!-- HERO SECTION -->
    <section class="hero">
        <div class="container">
            <h1>Transformando la solidaridad en acción</h1>
            <p class="lead">Únete a una comunidad que cambia vidas, una donación a la vez.</p>
            <a href="/proyectos" class="btn cta-button mt-3">Explorar Proyectos</a>
        </div>
    </section>

    <!-- SOBRE NOSOTROS -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">Sobre Nosotros</h2>
        <p class="espaciado-texto text-center fs-5">
            En <strong>Tu Granito de Arena</strong> creemos que cada aporte cuenta. Conectamos personas solidarias con ONGs y proyectos de impacto social para crear un cambio real.
        </p>

        <!-- VALORES -->
        <div class="row text-center mt-5">
            <div class="col-md-4 valores-card">
                <div class="valores-icon">🌍</div>
                <h4>Transparencia</h4>
                <p>Seguimiento y reporte detallado de cada proyecto y donación.</p>
            </div>
            <div class="col-md-4 valores-card">
                <div class="valores-icon">🤝</div>
                <h4>Compromiso</h4>
                <p>ONGs verificadas que garantizan un impacto verdadero y seguro.</p>
            </div>
            <div class="col-md-4 valores-card">
                <div class="valores-icon">💡</div>
                <h4>Innovación</h4>
                <p>Plataforma simple y rápida para donar de manera efectiva.</p>
            </div>
        </div>

        <!-- METRICAS DE IMPACTO -->
        <div class="metricas text-center mt-5">
            <div class="row">
                <div class="col-md-4">
                    <h3>+500</h3>
                    <p>Donadores Activos</p>
                </div>
                <div class="col-md-4">
                    <h3>+20</h3>
                    <p>Proyectos en Curso</p>
                </div>
                <div class="col-md-4">
                    <h3>+1000</h3>
                    <p>Vidas Impactadas</p>
                </div>
            </div>
        </div>

        <!-- TESTIMONIO -->
        <div class="testimonio text-center mt-5">
            <img src="https://images.unsplash.com/photo-1594824476966-c173e9bba1f4?fit=crop&w=400&q=60" alt="Testimonio">
            <p class="fst-italic">"Gracias a Tu Granito de Arena, pude apoyar a una causa que realmente me importa. ¡Es increíble ver el impacto de mi donación!"</p>
            <p><strong>- María González</strong></p>
        </div>

        <!-- LLAMADO A LA ACCIÓN -->
        <div class="text-center mt-5">
            <h3 class="text-primary fw-bold">¿Listo para hacer la diferencia?</h3>
            <p class="fs-5">Explora los proyectos y aporta tu granito de arena hoy mismo.</p>
            <a href="/dashboard" class="btn cta-button">Explorar Proyectos</a>
        </div>
    </div>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <p>&copy; 2025 Granito de Arena. Todos los derechos reservados.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
