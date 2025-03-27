<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tu Granito de Arena - Crowdfunding Solidario</title>
    
    <!-- CSS Links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    
    <style>
        /* Estilos generales */
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
        
        /* Hero section */
        .hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), 
                         url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e') center/cover no-repeat;
            color: white;
	        padding: 100px 0;
	        text-align: center;
        }
        
        /* Botones */
        .btn-yellow {
            background-color: #f4c430;
            color: #fff;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .btn-yellow:hover {
            background-color: #d4aa1f;
            transform: translateY(-2px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }
        
        .btn-primary {
            color: #fff;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);   	
        }
        
        .btn-primary:hover {
            color: #fff;
            transform: translateY(-2px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }
        
        .cta-button {
            background-color: #ffc107;
            color: #fff;
            padding: 12px 24px;
            font-size: 1.2rem;
            border-radius: 50px;
            transition: background-color 0.3s;
        }
        
        .cta-button:hover {
            background-color: #e0a800;
            transform: translateY(-2px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }
        
        /* Contenedor de botones */
        .button-container {
            position: absolute;
            right: 20px;
            z-index: 1000;
        }
        
        .carousel-container {
        width: 65%;
        height: auto;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        display: inline-block
    }
    
    .carousel-container .carousel-item img {
        height: 400px;
        object-fit: cover;
        border-radius: 20px;
    }
    
    .carousel-caption {
        background-color: rgba(0, 0, 0, 0.5);
        padding: 10px;
        border-radius: 10px;
    }
    
    .carousel-caption .btn {
        font-size: 0.9rem;
        padding: 5px 10px;
        border-radius: 15px;
    }
        
        /* Sección de contenido */
        .espaciado-texto {
            line-height: 1.6;
            color: #333;
        }
        
        /* Tarjetas de valores */
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
        
        /* Métricas */
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
        
        /* Testimonios */
        .testimonio img {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 10px;
        }
        
        /* Footer */
        footer {
            background-color: #0d6efd;
            color: white;
            padding: 15px 0;
            text-align: center;
            margin-top: 40px;
        }
        
        /* Modal personalizado para inicio de sesión requerido */
        .login-required-modal .modal-content {
            border-radius: 15px;
            border: none;
            padding: 20px;
        }
        
        .login-required-modal .modal-header {
            border-bottom: none;
            justify-content: center;
        }
        
        .login-required-modal .modal-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #0d6efd;
        }
        
        .login-required-modal .modal-body {
            text-align: center;
            padding: 20px;
        }
        
        .login-required-modal .modal-icon {
            font-size: 3rem;
            color: #f4c430;
            margin-bottom: 15px;
        }
        
        .login-required-modal .modal-message {
            font-size: 1.1rem;
            margin-bottom: 25px;
        }
        
        .login-required-modal .btn-group {
            display: flex;
            gap: 15px;
            justify-content: center;
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
            <div class="button-container">
	            <button class="btn btn-yellow me-2" data-bs-toggle="modal" data-bs-target="#usuarioModal">Usuario</button>
	            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#empresaModal">Empresa</button>
        	</div>
        </div>
    </nav>

    <!-- HERO SECTION -->
    <section class="hero">
        <div class="carousel-container">
            <div id="proyectosCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c" class="d-block w-100" alt="Proyecto educación">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Educación para todos</h5>
                            <p>Financia becas para niños de escasos recursos.</p>
                            <button class="btn cta-button" data-bs-toggle="modal" data-bs-target="#loginRequiredModal">Explorar Proyectos</button>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1523240795612-9a054b0db644" class="d-block w-100" alt="Proyecto agua">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Agua limpia</h5>
                            <p>Lleva agua potable a comunidades necesitadas.</p>
                            <button class="btn cta-button" data-bs-toggle="modal" data-bs-target="#loginRequiredModal">Explorar Proyectos</button>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1527689368864-3a821dbccc34" class="d-block w-100" alt="Proyecto energía">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Energía renovable</h5>
                            <p>Instala paneles solares en zonas rurales.</p>
                            <button class="btn cta-button" data-bs-toggle="modal" data-bs-target="#loginRequiredModal">Explorar Proyectos</button>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#proyectosCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#proyectosCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>
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
            <img src="https://www.aciprensa.com/imagespp/PatriciaSandoval_ArzobispadoPiura_151116.jpg" alt="Testimonio">
            <p class="fst-italic">"Gracias a Tu Granito de Arena, pude apoyar a una causa que realmente me importa. ¡Es increíble ver el impacto de mi donación!"</p>
            <p><strong>- María González</strong></p>
        </div>

        <!-- Llamado a la acción -->
        <section class="text-center mt-5">
            <h3 class="text-primary fw-bold">¿Listo para hacer la diferencia?</h3>
            <p class="fs-5">Explora los proyectos y aporta tu granito de arena hoy mismo.</p>
            <button class="btn cta-button" data-bs-toggle="modal" data-bs-target="#loginRequiredModal">Explorar Proyectos</button>
        </section>
    </div>

    <!-- Modal para inicio de sesión requerido -->
    <div class="modal fade login-required-modal" id="loginRequiredModal" tabindex="-1" aria-labelledby="loginRequiredModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginRequiredModalLabel">Acceso Requerido</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="modal-icon">🔒</div>
                    <p class="modal-message">Para explorar los proyectos, primero debes iniciar sesión.</p>
                    <p>Selecciona tu tipo de usuario:</p>
                    
                    <div class="btn-group">
                        <button type="button" class="btn btn-yellow" data-bs-toggle="modal" data-bs-target="#usuarioModal" data-bs-dismiss="modal">
                            Soy Usuario
                        </button>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#empresaModal" data-bs-dismiss="modal">
                            Soy Empresa
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal para Usuario -->
    <div class="modal fade" id="usuarioModal" tabindex="-1" aria-labelledby="usuarioModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="usuarioModalLabel">Acceso Usuario</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="d-grid gap-2">
                        <a href="/registroUsuario" class="btn btn-yellow">Registrarse</a>
                        <a href="/loginUsuario" class="btn btn-primary">Iniciar Sesión</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal para Empresa -->
    <div class="modal fade" id="empresaModal" tabindex="-1" aria-labelledby="empresaModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="empresaModalLabel">Acceso Empresa</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="d-grid gap-2">
                        <a href="/registroEmpresa" class="btn btn-yellow">Registrarse</a>
                        <a href="/loginEmpresa" class="btn btn-primary">Iniciar Sesión</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; 2025 Granito de Arena. Todos los derechos reservados.</p>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Inicializar el carrusel
        document.addEventListener('DOMContentLoaded', function() {
            var myCarousel = new bootstrap.Carousel(document.getElementById('proyectosCarousel'), {
                interval: 5000,
                wrap: true
            });
        });
    </script>
</body>
</html>