<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Arenita - Proyecto Detalle</title>

<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- FontAwesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Roboto', sans-serif;
	background-color: #f8f9fa;
	color: #333;
}

/* Navbar */
.navbar {
	background-color: #fff;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
	padding: 0.75rem 1rem;
}

.navbar-brand {
	font-weight: 700;
	letter-spacing: 1px;
	color: #333;
}

.navbar-toggler {
	border: none;
}

.form-control {
	border-radius: 30px;
}

/* Botones */
.btn {
	border-radius: 30px;
	padding: 0.4rem 1rem;
	font-size: 0.9rem;
}

.btn-dark {
	background-color: #333;
	border: none;
}

.btn-outline-dark:hover {
	background-color: #333;
	color: #fff;
}

.btn-warning {
	background-color: #f4c430;
	border: none;
	color: #333;
	font-weight: 600;
}

.btn-warning:hover {
	background-color: #d4aa1f;
	color: #fff;
}

.btn-amarillo {
	background-color: #f4c430;
	color: #333;
	border: none;
	font-weight: 600;
}

.btn-amarillo:hover {
	background-color: #d4aa1f;
	color: #fff;
}

/* Tarjetas */
.card-custom {
	border: none;
	border-radius: 12px;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
}

/* Progreso */
.progress {
	height: 20px;
	border-radius: 10px;
	overflow: hidden;
	background-color: #e9ecef;
}

.progress-bar {
	background-color: #0d6efd;
	font-weight: 600;
}

/* Footer */
footer {
	background-color: #0d6efd;
	color: white;
	padding: 5px 0;
	text-align: center;
	bottom: 0;
	width: 100%;
}

/* Hover zoom */
.hover-zoom {
	transition: transform 0.3s ease;
	border-radius: 1rem;
}

.hover-zoom:hover {
	transform: scale(1.05);
}

/* Responsive */
@media ( max-width : 576px) {
	.navbar-collapse {
		background-color: #fff;
		padding: 1rem;
		border-radius: 12px;
		box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
	}
	footer .row>div {
		margin-bottom: 1rem;
		text-align: center;
	}
}

@media ( max-width : 991.98px) {
	.navbar-nav .nav-item {
		margin-bottom: 0.5rem;
	}
}
</style>
</head>

<body class="d-flex flex-column min-vh-100">

	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
		<div class="container">
			<a class="navbar-brand fw-bold text-primary" href="/">Granito de
				Arena</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav">
					<li>
						<form action="/buscar" method="GET">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Buscar proyecto" name="palabra">
								<button class="btn btn-outline-secondary" type="submit"
									id="button-addon2">Buscar</button>
							</div>
						</form>
					</li>
					<li class="nav-item"><a class="nav-link" href="#"></a></li>
					<c:if test="${usuarioEnSesion.genero == null}">
						<li class="nav-item"><a class="btn btn-warning me-2"
							href="/nuevo">Proponer proyecto</a></li>
					</c:if>
					<li class="nav-item"><a class="btn btn-warning"
						href="/sobreNosotros">Nosotros</a></li>
					<li class="nav-item"><a class="btn btn-primary ms-2"
						href="/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- CONTENIDO PRINCIPAL -->
	<main class="container mt-5 pt-4 mb-5">
		<div class="row align-items-center">
			<!-- Imagen del Proyecto -->
			<div class="col-md-6 mb-4 text-center">
				<img src="${proyecto.urlImagen}" alt="Imagen del Proyecto"
					class="img-fluid hover-zoom shadow-sm" style="max-height: 400px;">
			</div>

			<!-- Info del Proyecto -->
			<div class="col-md-6">
				<h2 class="fw-bold text-primary mb-3">${proyecto.nombreProyecto}</h2>
				<p class="text-muted mb-1">
					<i class="fas fa-building me-2"></i><strong>Creador:</strong>
					${proyecto.creador.nombreEmpresa}
				</p>

				<div class="card card-custom p-4 mt-3">
					<p class="fs-5">
						<strong>${proyecto.cantidadRecaudada} CLP</strong> recaudados
					</p>
					<p class="text-muted mb-3">
						<strong>Meta:</strong> ${proyecto.metaProyecto} CLP
					</p>
					<p class="text-muted">${proyecto.donaciones.stream().map(d -> d.getUsuario()).distinct().count()} personas han aportado</p>
					<!-- Barra de Progreso -->
					<div class="progress mb-3">
						<div class="progress-bar" role="progressbar"
							style="width: ${(proyecto.cantidadRecaudada / proyecto.metaProyecto) * 100}%;"
							aria-valuenow="${(proyecto.cantidadRecaudada / proyecto.metaProyecto) * 100}">
							${(proyecto.cantidadRecaudada / proyecto.metaProyecto) * 100}%</div>
					</div>

					<!-- Botones -->
					<div class="d-flex flex-wrap gap-3">
						<c:if test="${proyecto.creador.id == empresaEnSesion.id}">
							<a href="/editar/${proyecto.id}" class="btn btn-warning"> <i
								class="fas fa-edit me-2"></i>Editar
							</a>
						</c:if>
						<c:if
							test="${proyecto.creador.id != empresaEnSesion.id && usuarioEnSesion != null}">
							<a href="/pago/${proyecto.id}" class="btn btn-amarillo"
								title="Serás redirigido al pago"> <i
								class="fas fa-hand-holding-heart me-2"></i>Donar
							</a>
						</c:if>
						<button class="btn btn-outline-dark" onclick="copiarEnlace()">
							<i class="fas fa-share-alt me-2"></i>Compartir
						</button>
					</div>
					<p id="mensajeCopiado" class="text-success mt-2"
						style="display: none;">¡Enlace copiado!</p>
				</div>
			</div>
		</div>

		<!-- Descripción -->
		<section class="mt-5">
			<h4 class="fw-bold mb-3">Descripción del proyecto</h4>
			<p class="text-muted fs-6">${proyecto.descripcionProyecto}</p>
		</section>

		<!-- Donaciones -->
		<section class="mt-5">
			<h4 class="fw-bold mb-3">Donaciones recientes</h4>
			<c:forEach items="${proyecto.donaciones}" var="donacion">
				<p>
					<i class="fas fa-user-circle me-2"></i><strong>${donacion.usuario.nombre}:</strong>
					ha donado <strong>${donacion.valor} CLP</strong>
				</p>
			</c:forEach>
		</section>
	</main>

	<!-- FOOTER -->
	<footer class="text-center p-3 mt-auto">
		<div class="container">
			<p>&copy; 2025 Granito de Arena. Todos los derechos reservados.</p>
		</div>
	</footer>

	<!-- SCRIPTS -->
	<script>
		function copiarEnlace() {
			const enlace = window.location.href;
			navigator.clipboard.writeText(enlace).then(() => {
				const mensaje = document.getElementById('mensajeCopiado');
				mensaje.style.display = 'block';
				setTimeout(() => mensaje.style.display = 'none', 2000);
			}).catch(err => {
				alert('No se pudo copiar el enlace.');
				console.error(err);
			});
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>