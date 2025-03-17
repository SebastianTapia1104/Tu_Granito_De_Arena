<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Granito de Arena</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	font-family: 'Arial', sans-serif;
}

.hero {
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e')
		center/cover no-repeat;
	color: white;
	height: 100vh;
	display: flex;
	align-items: center;
}

.hero h1 {
	font-size: 4rem;
	font-weight: bold;
}

.btn-yellow {
	background-color: #f4c430;
	color: #fff;
}

.btn-yellow:hover {
	background-color: #d4aa1f;
	color: #fff;
}

.section-title {
	color: #0d6efd;
}

.project-card:hover {
	transform: translateY(-5px);
	transition: all 0.3s ease;
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}

footer {
	background-color: #0d6efd;
	color: white;
	padding: 20px 0;
}
</style>
</head>

<body>

	<!-- NAVBAR-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
		<div class="container">
			<!-- Logo y nombre -->
			<a class="navbar-brand fw-bold text-primary" href="/">Granito de
				Arena</a>

			<!-- Botón para menú colapsable en móviles -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarContent"
				aria-controls="navbarContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Contenido del navbar -->
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarContent">
				<!-- Menú principal -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="/">Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="/nuevo">Propón tu Proyecto!</a></li>
					<li class="nav-item"><a class="nav-link" href="/nosotros">Nosotros</a></li>
				</ul>

				<!-- Buscador -->
				<form class="d-flex me-3 my-2 my-lg-0" role="search"
					action="/buscar" method="GET">
					<input class="form-control" type="search" name="palabra"
						placeholder="Buscar proyecto...">
				</form>
				<a class="btn btn-primary ms-2" href="/loginUsuario">Login Personas</a>
				<a class="btn btn-primary ms-2" href="/loginEmpresa">Login Empresas</a>
			</div>
		</div>
	</nav>

	<!-- HERO -->
	<section class="hero text-center">
		<div class="container">
			<h1>Tu aporte, un Granito de Arena</h1>
			<p class="lead">Ayuda a transformar vidas financiando proyectos
				de impacto social.</p>
			<a href="/registroUsuario" class="btn btn-yellow btn-lg mt-4">Registro
				Usuario</a> <a href="/registroEmpresa"
				class="btn btn-yellow btn-lg mt-4">Registro Empresa</a>
		</div>
	</section>

	<!-- PROYECTOS DESTACADOS -->
	<section class="py-5">
		<div class="container">
			<h2 class="section-title text-center mb-5">Proyectos Destacados</h2>

			<div class="row g-4">
				<div class="col-md-4">
					<div class="card project-card shadow-sm">
						<img
							src="https://images.unsplash.com/photo-1581092918367-05c6ab63bde6"
							class="card-img-top" alt="Proyecto 1">
						<div class="card-body">
							<h5 class="card-title">Educación para Todos</h5>
							<p class="card-text">Ayudemos a construir un futuro mejor
								financiando becas para niños de escasos recursos.</p>
							<a href="#" class="btn btn-primary">Ver Proyecto</a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card project-card shadow-sm">
						<img
							src="https://images.unsplash.com/photo-1556742049-90843c4e8b06"
							class="card-img-top" alt="Proyecto 2">
						<div class="card-body">
							<h5 class="card-title">Agua Limpia</h5>
							<p class="card-text">Con tu ayuda llevaremos agua potable a
								comunidades rurales que lo necesitan.</p>
							<a href="#" class="btn btn-primary">Ver Proyecto</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>

	<!-- FOOTER -->
	<footer class="text-center">
		<div class="container">
			<p>&copy; 2025 Granito de Arena. Todos los derechos reservados.</p>
		</div>
	</footer>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
