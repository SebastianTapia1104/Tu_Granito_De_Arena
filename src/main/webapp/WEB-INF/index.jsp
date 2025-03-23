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
	margin: 0;
	padding: 0;
}

.hero {
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
	url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e') center/cover no-repeat;
	color: white;
	height: 100vh;
	display: flex;
	align-items: flex-start; /* Alinea el contenido hacia arriba */
	text-align: left;
	padding: 20px 5%; /* Reduje el padding superior */
	position: relative;
}

.hero-content {
	max-width: 600px;
	margin-top: 80px; /* Ajusta este valor para alinear con los botones */
}

.hero h1 {
	font-size: 3.5rem;
	font-weight: bold;
	margin: 0; /* Elimina el margen predeterminado del h1 */
}

.hero p {
	font-size: 1.5rem;
	margin-top: 20px;
}

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
	color: #fff;
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

.button-container {
	position: absolute;
	top: 20px;
	right: 20px;
	z-index: 1000;
}

.carousel-container {
	position: absolute;
	bottom: 5%;
	right: 5%;
	width: 45%;
	height: auto;
	border-radius: 20px; 
	overflow: hidden; /* Para que las imágenes respeten el border-radius */
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

.carousel-container .carousel-item img {
	height: 400px; 
	object-fit: cover;
	border-radius: 20px;
}

.carousel-caption .btn {
    font-size: 0.9rem;
    padding: 5px 10px;
    border-radius: 15px;
}

footer {
	background-color: #0d6efd;
	color: white;
	padding: 5px 0;
	text-align: center;
	
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<!-- Hero Section -->
	<section class="hero">
		<!-- Botones-->
		<div class="button-container">
			<button class="btn btn-yellow me-2" data-bs-toggle="modal"
				data-bs-target="#usuarioModal">Usuario</button>
			<button class="btn btn-yellow" data-bs-toggle="modal"
				data-bs-target="#empresaModal">Empresa</button>
		</div>

		<div class="hero-content">
			<h1>Tu aporte, un Granito de Arena</h1>
			<p>Ayuda a transformar vidas financiando proyectos de impacto
				social.</p>
			<a href="#proyectos" class="btn btn-yellow">Proyectos destacados</a>
		</div>

		<!--Carrusel -->
		<div class="carousel-container">
			<div id="carouselExampleCaptions" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img
							src="https://images.unsplash.com/photo-1522071820081-009f0129c71c"
							class="d-block w-100" alt="Proyecto 1">
						<div class="carousel-caption d-none d-md-block">
							<div class="carousel-caption d-none d-md-block">
								<h5>Educación para todos</h5>
								<p>Financia becas para niños de escasos recursos.</p>
								<a href="/detalleProyecto/1" class="btn btn-yellow btn-sm">Ver más</a>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img
							src="https://images.unsplash.com/photo-1523240795612-9a054b0db644"
							class="d-block w-100" alt="Proyecto 2">
						<div class="carousel-caption d-none d-md-block">
							<h5>Agua limpia</h5>
							<p>Lleva agua potable a comunidades necesitadas.</p>
							<a href="/detalleProyecto/1" class="btn btn-yellow btn-sm">Ver más</a>	
						</div>
					</div>
					<div class="carousel-item">
						<img
							src="https://images.unsplash.com/photo-1527689368864-3a821dbccc34"
							class="d-block w-100" alt="Proyecto 3">
						<div class="carousel-caption d-none d-md-block">
							<h5>Energía renovable</h5>
							<p>Instala paneles solares en zonas rurales.</p>
						    <a href="/detalleProyecto/1" class="btn btn-yellow btn-sm">Ver más</a>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Anterior</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Siguiente</span>
				</button>
			</div>
		</div>
	</section>

	<!-- Modal para Usuario -->
	<div class="modal fade" id="usuarioModal" tabindex="-1"
		aria-labelledby="usuarioModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="usuarioModalLabel">Usuario</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<a href="/registroUsuario" class="btn btn-yellow w-100 mb-2">Registro
						Usuario</a> <a href="/loginUsuario" class="btn btn-primary w-100">Login
						Usuario</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal para Empresa -->
	<div class="modal fade" id="empresaModal" tabindex="-1"
		aria-labelledby="empresaModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="empresaModalLabel">Empresa</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<a href="/registroEmpresa" class="btn btn-yellow w-100 mb-2">Registro
						Empresa</a> <a href="/loginEmpresa" class="btn btn-primary w-100">Login
						Empresa</a>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<footer>
		<p>&copy; 2025 Granito de Arena - Todos los derechos reservados.</p>
	</footer>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>