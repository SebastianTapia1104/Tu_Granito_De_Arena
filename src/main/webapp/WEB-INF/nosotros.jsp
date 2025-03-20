<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Arenita - Crowdfunding</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	/*body ocupa al menos toda la altura de la pantalla */
	background-color: #f8f9fa;
	margin: 0;
}

.container {
	flex: 1;
	/*contenedor principal ocupe el espacio restante */
}

/* ---NAVBAR--- */
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

.btn-amarillo {
	background-color: #ffc107;
	border-color: #ffc107;
	color: #000;
}

.btn-amarillo:hover {
	background-color: #e0a800;
	border-color: #e0a800;
}

.espaciado-texto {
    line-height: 1.5;
}

/* ---FOOTER--- */
footer {
	background-color: #0d6efd;
	color: white;
	padding: 5px 0;
	text-align: center;
	position: fixed;
	bottom: 0;
	width: 100%;
	
	
}

/* Ajuste para que el contenido no se solape con el footer */
.container {
	margin-bottom: 5px;
	/* Asegura que el contenido no quede detrás del footer */
}
</style>
</head>
<body>
	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
		<div class="container">
			<a class="navbar-brand fw-bold text-primary" href="/">Granito de
				Arena</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarContent"
				aria-controls="navbarContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item btn"><a class="nav-link btn" href="/">Inicio</a></li>					
				</ul>
				<form class="d-flex me-3 my-2 my-lg-0" role="search"
					action="/buscar" method="GET">
					<input class="form-control" type="search" name="palabra"
						placeholder="Buscar proyecto...">
				</form>
			</div>
		</div>
	</nav>

	<!-- Contenido principal -->
	<div class="container mt-5">
		<h1 class="mb-4">Sobre nosotros</h1>
		<h3 class="espaciado-texto">
    En Tu Granito de Arena, creemos en el poder de la solidaridad y en la importancia de conectar a quienes desean ayudar con aquellos que más lo necesitan. <br> 
    Somos una plataforma que centraliza proyectos de ONGs y empresas comprometidas con el cambio social, facilitando que cualquier persona pueda aportar su granito de arena a las causas que más le importan. <br>

    Nuestra misión es crear un espacio transparente y accesible donde los usuarios puedan descubrir, conocer y donar a proyectos que generan un impacto positivo en la sociedad. <br> 
    Al mismo tiempo, brindamos a las organizaciones una herramienta para visibilizar sus iniciativas en una plataforma que centraliza los proyectos para generar un mayor alcance.

    Ya sea apoyando la educación, el medio ambiente, la salud o cualquier otra causa, en Tu Granito de Arena cada aporte cuenta. Juntos, podemos construir un mundo mejor. <br>

    ¿Listo para hacer la diferencia? ¡Explora los proyectos y aporta tu granito de arena para la causa que más te guste!
</h3>
	
	</div>

	<!-- FOOTER -->
	<footer>
		<div class="container">
			<p>&copy; 2025 Granito de Arena. Todos los derechos reservados.</p>
		</div>
	</footer>

	<script>
        function copiarEnlace() {
            const enlace = window.location.href;
            navigator.clipboard.writeText(enlace).then(() => {
                document.getElementById('mensajeCopiado').style.display = 'block';
                setTimeout(() => {
                    document.getElementById('mensajeCopiado').style.display = 'none';
                }, 2000);
            }).catch(err => {
                alert('No se pudo copiar el enlace. Por favor, inténtalo manualmente.');
                console.error('Error al copiar el enlace:', err);
            });
        }
    </script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>