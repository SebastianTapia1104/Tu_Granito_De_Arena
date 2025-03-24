<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Arenita - Crowdfunding</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
	
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">

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

	<!-- Contenido Principal -->
	<main class="container text-center mt-5 pt-5">
		<h4 class="mb-4">
			Bienvenido/a de vuelta,
			<c:out value="${usuarioEnSesion.nombre}" />
			!
		</h4>
		<h2 class="fw-bold mb-4 text-primary">Descubre y Apoya Nuevos
			Proyectos</h2>

		<!-- Listado de Proyectos -->
		<div class="row">
			<c:forEach var="proyecto" items="${proyectos}">
				<div class="col-sm-12 col-md-6 col-lg-4 mb-4">
					<div class="card shadow-sm h-100 border-0 rounded-4">

						<!-- Imagen con efecto hover -->
						<div class="overflow-hidden rounded-top-4">
							<img src="${proyecto.urlImagen}"
								class="card-img-top img-fluid hover-zoom"
								alt="${proyecto.nombreProyecto}"
								style="height: 220px; object-fit: cover;">
						</div>

						<div class="card-body d-flex flex-column p-4">
							<!-- Nombre Proyecto -->
							<h5 class="card-title mb-3">
								<a href="/detalle/${proyecto.id}"
									class="text-decoration-none text-dark fw-bold"> <c:out
										value="${proyecto.nombreProyecto}" />
								</a>
							</h5>

							<!-- Descripción breve -->
							<p class="card-text text-muted small mb-4"
								style="height: 60px; overflow: hidden;">
								<c:out value="${proyecto.descripcionProyecto}" />
							</p>

							<!-- Footer de la tarjeta -->
							<div
								class="mt-auto d-flex justify-content-between align-items-center">
								<!-- Meta del Proyecto -->
								<span class="badge bg-success px-3 py-2 rounded-pill">Meta:
									$<c:out value="${proyecto.metaProyecto}" />
								</span>

								<!-- Botones de acción -->
								<div class="d-flex gap-2">
									<a href="/detalle/${proyecto.id}"
										class="btn btn-sm btn-outline-dark"><i class="fas fa-eye"></i></a>

									<c:if test="${proyecto.creador.id == empresaEnSesion.id}">
										<a href="/editar/${proyecto.id}"
											class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></a>
									</c:if>
								</div>
							</div>
						</div>

					</div>
				</div>
			</c:forEach>
		</div>
	</main>


	<!-- Footer -->
	<footer class="text-center p-3 mt-auto">
		<div class="container">
			<p>&copy; 2025 Granito de Arena. Todos los derechos reservados.</p>
		</div>
	</footer>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
