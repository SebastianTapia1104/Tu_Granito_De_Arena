<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Arenita - Crowdfunding</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- FontAwesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

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

/* Tarjetas */
.card {
	border: none;
	border-radius: 12px;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
	transform: translateY(-5px);
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
}

.card-img-top {
	border-top-left-radius: 12px;
	border-top-right-radius: 12px;
	object-fit: cover;
	height: 200px;
}

/* Footer */
footer {
	background-color: #fff;
	box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.05);
	font-size: 0.9rem;
}

footer a {
	text-decoration: none;
	color: #333;
}

footer a:hover {
	text-decoration: underline;
}

/* Responsive */
@media (max-width: 576px) {
	.navbar-collapse {
		background-color: #fff;
		padding: 1rem;
		border-radius: 12px;
		box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
	}

	footer .row > div {
		margin-bottom: 1rem;
		text-align: center;
	}
}
</style>
</head>

<body class="d-flex flex-column min-vh-100">


    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-primary" href="#">Granito de Arena</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="#"></a></li>
              
                    <c:if test="${usuarioEnSesion.genero == null}">
						<li class="nav-item"><a class="btn btn-warning me-2" href="/nuevo">Proponer proyecto</a></li>
					</c:if>
                    <li class="nav-item"><a class="btn btn-primary" href="/sobreNosotros">Nosotros</a></li>
                    <li class="nav-item"><a class="btn btn-primary ms-2" href="/logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

	<!-- Contenido Principal -->
	<main class="container text-center mt-5 pt-5">
		<h2 class="fw-bold mb-4">Apoya estas ideas</h2>

		<!-- Listado de Proyectos -->
		<div class="row">
			<c:forEach var="proyecto" items="${proyectos}">
				<div class="col-sm-12 col-md-6 col-lg-4 mb-4">
					<div class="card shadow-sm h-100">

						<img src="${proyecto.urlImagen}" class="card-img-top" alt="${proyecto.nombreProyecto}">

						<div class="card-body d-flex flex-column">
							<h5 class="card-title">
								<a href="/detalle/${proyecto.id}" class="text-decoration-none text-dark fw-bold">
									<c:out value="${proyecto.nombreProyecto}" />
								</a>
							</h5>

							<p class="card-text text-muted small mb-3">
								<c:out value="${proyecto.descripcionProyecto}" />
							</p>

							<div class="mt-auto">
								<p class="mb-2">
									<span class="badge bg-success">Meta: $<c:out value="${proyecto.metaProyecto}"/></span>
								</p>
								
								<c:if test="${proyecto.creador.id == usuarioEnSesion.id}">
									<a href="/editar/${proyecto.id}" class="btn btn-sm btn-warning">
										<i class="fas fa-edit"></i> Editar
									</a>
								</c:if>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
