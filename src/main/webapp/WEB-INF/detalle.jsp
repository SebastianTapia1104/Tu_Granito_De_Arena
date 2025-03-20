<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item btn"><a class="nav-link btn" href="/">Inicio</a></li>
					<li class="nav-item btn"><a class="nav-link btn" href="/sobreNosotros">Nosotros</a>
					</li>
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
		<div class="row">
			<!-- Información del Proyecto -->
			<div class="col-md-6">
				<h2>${proyecto.nombreProyecto}</h2>
				<p>
					<strong>Creador:</strong> ${proyecto.creador.nombreEmpresa}
				</p>
				<div class="card p-4 shadow-sm">
					<p>
						<strong>${proyecto.cantidadRecaudada} USD</strong> recaudados
					</p>
					<p>
						<strong>Meta:</strong> ${proyecto.metaProyecto} USD
					</p>
					<p>${proyecto.donadores.size()} personas aportaron</p>
					<!-- Barra de progreso -->
					<div class="progress">
						<div class="progress-bar" role="progressbar"
							style="width: ${(proyecto.cantidadRecaudada / proyecto.metaProyecto) * 100}%;"
							aria-valuenow="${(proyecto.cantidadRecaudada / proyecto.metaProyecto) * 100}"
							aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
				<!-- Botones -->
				<div class="mt-4">
					<a href="/editar/${proyecto.id}" class="btn btn-sm btn-warning">
						<i class="fas fa-edit"></i> Editar
					</a>
					<a href="https://www.mercadopago.cl" target="_blank" class="btn btn-amarillo me-3" title="Serás redirigido a MercadoPago">Donar</a>
					<button class="btn btn-outline-primary" onclick="copiarEnlace()">Compartir</button>
					<p id="mensajeCopiado" class="text-success mt-2"
						style="display: none;">¡Enlace copiado!</p>
				</div>
			</div>
			<!-- Imagen del Proyecto -->
			<div class="col-md-6 text-center">
				<img src="${proyecto.urlImagen}" alt="Imagen del Proyecto"
					class="img-fluid rounded shadow-sm"
					style="max-height: 300px; max-width: 100%;">
			</div>
		</div>
		<!-- Descripción -->
		<div class="mt-5">
			<h4>Descripción del proyecto:</h4>
			<p>${proyecto.descripcionProyecto}</p>
		</div>
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