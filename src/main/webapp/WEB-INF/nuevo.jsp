<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AreNita - Crowdfunding</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex flex-column min-vh-100">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light py-3 shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold" href="/">ARE NITA</a>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse justify-content-end" id="navbarContent">
                <form class="d-flex me-3" role="search">
                    <input class="form-control" type="search" placeholder="Buscar proyecto...">
                </form>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a href="#" class="btn btn-outline-dark me-2">Todos los proyectos</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="btn btn-outline-dark me-2">Aporte Voluntario</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="btn btn-outline-dark me-2">Mi Perfil</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="btn btn-dark">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Contenido principal -->
    <main class="flex-grow-1">
        <div class="container py-5">
            <h2 class="mb-4">${proyecto.id != null ? 'Editar Proyecto' : 'Crear Nuevo Proyecto'}</h2>

            <form action="${proyecto.id != null ? '/actualizar/' + proyecto.id : '/crear'}" method="post" enctype="multipart/form-data">

                <!-- Nombre del Proyecto -->
                <div class="mb-3">
                    <label for="nombreProyecto" class="form-label">Nombre del Proyecto</label>
                    <input type="text" class="form-control" id="nombreProyecto" name="nombreProyecto"
                        value="${proyecto.nombreProyecto != null ? proyecto.nombreProyecto : ''}" required>
                </div>

                <!-- Descripción -->
                <div class="mb-3">
                    <label for="descripcionProyecto" class="form-label">Descripción</label>
                    <textarea class="form-control" id="descripcionProyecto" name="descripcionProyecto" rows="3" required>${proyecto.descripcionProyecto != null ? proyecto.descripcionProyecto : ''}</textarea>
                </div>

                <!-- Meta -->
                <div class="mb-3">
                    <label for="metaProyecto" class="form-label">Meta (monto a recaudar)</label>
                    <input type="number" step="0.01" min="0" class="form-control" id="metaProyecto" name="metaProyecto"
                        value="${proyecto.metaProyecto != null ? proyecto.metaProyecto : ''}" required>
                </div>

                <!-- Datos Bancarios -->
                <div class="mb-3">
                    <label for="datosBancarios" class="form-label">Nombre del Titular de la Cuenta</label>
                    <input type="text" class="form-control" id="datosBancarios" name="datosBancarios"
                        value="${proyecto.datosBancarios != null ? proyecto.datosBancarios : ''}" required>
                </div>

                <!-- Banco -->
                <div class="mb-3">
                    <label for="banco" class="form-label">Banco</label>
                    <input type="text" class="form-control" id="banco" name="banco"
                        value="${proyecto.banco != null ? proyecto.banco : ''}" required>
                </div>

                <!-- Tipo de Cuenta -->
                <div class="mb-3">
                    <label for="tipoCuenta" class="form-label">Tipo de Cuenta</label>
                    <select class="form-select" id="tipoCuenta" name="tipoCuenta" required>
                        <option value="">Seleccione un tipo de cuenta</option>
                        <option value="corriente" ${proyecto.tipoCuenta == 'corriente' ? 'selected' : ''}>Cuenta Corriente</option>
                        <option value="vista" ${proyecto.tipoCuenta == 'vista' ? 'selected' : ''}>Cuenta Vista</option>
                        <option value="ahorro" ${proyecto.tipoCuenta == 'ahorro' ? 'selected' : ''}>Cuenta de Ahorro</option>
                    </select>
                </div>

                <!-- Número de Cuenta -->
                <div class="mb-3">
                    <label for="numeroCuenta" class="form-label">Número de Cuenta</label>
                    <input type="text" class="form-control" id="numeroCuenta" name="numeroCuenta"
                        value="${proyecto.numeroCuenta != null ? proyecto.numeroCuenta : ''}" required>
                </div>

                <!-- Imagen del Proyecto (opcional) -->
                <!--
                <div class="mb-3">
                    <label for="imagenProyecto" class="form-label">URL de Imagen (o sube archivo)</label>
                    <input type="text" class="form-control mb-2" id="imagenProyecto" name="imagenProyecto"
                        value="${proyecto.imagenProyecto != null ? proyecto.imagenProyecto : ''}">
                    <input type="file" class="form-control" id="imagenFile" name="imagenFile">
                </div>
                -->

                <!-- Botones -->
                <div class="d-flex gap-2">
                    <button type="submit" class="btn btn-primary">Aceptar</button>
                    <a href="/" class="btn btn-secondary">Cancelar</a>
                </div>

            </form>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-light text-center text-lg-start mt-auto shadow-sm">
        <div class="container p-4">
            <div class="row text-center text-md-start">
                <div class="col-md-4 mb-3">
                    <h6 class="text-uppercase fw-bold">Sobre Nosotros</h6>
                    <p>Contacto</p>
                </div>
                <div class="col-md-4 mb-3">
                    <h6 class="text-uppercase fw-bold">Medios de Pago</h6>
                    <p>WEBPAY - MACH - MERCADO PAGO - CRYPTO</p>
                </div>
                <div class="col-md-4 mb-3">
                    <h6 class="text-uppercase fw-bold">Legal</h6>
                    <p>Términos, condiciones y privacidad</p>
                </div>
            </div>
        </div>
        <div class="text-center p-3 bg-dark text-white">
            © 2025 AreNita Crowdfunding
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
