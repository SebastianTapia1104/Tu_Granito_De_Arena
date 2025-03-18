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
	border-radius: 25px;
	padding: 10px 20px;
	font-size: 1.1rem;
	transition: all 0.3s ease;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.btn-primary:hover {
	transform: translateY(-2px);
	box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
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

	<!-- HERO -->
	<section class="hero text-center">
		<div class="container">
			<h1>Tu aporte, un Granito de Arena</h1>
			<p class="lead">Ayuda a transformar vidas financiando proyectos
				de impacto social.</p>
			<a href="/registroUsuario" class="btn btn-yellow btn-lg mt-4">Registro Usuario</a> 
			<a href="/registroEmpresa" class="btn btn-yellow btn-lg mt-4">Registro Empresa</a>
			<p></p>
			<a class="btn btn-primary ms-2" href="/loginUsuario">Login Personas</a>
			<a class="btn btn-primary ms-2" href="/loginEmpresa">Login Empresas</a>
		</div>
	</section>
</body>

</html>