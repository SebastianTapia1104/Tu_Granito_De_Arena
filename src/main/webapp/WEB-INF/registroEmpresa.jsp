<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro Empresa</title>
    
        <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
        <!-- Estilos personalizados -->
    <style>
        body {
            background-image: url("https://images.unsplash.com/photo-1426604966848-d7adac402bff?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbGV6YSUyMDRrfGVufDB8fDB8fHww");
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            padding: 20px;
            position: relative;
        }

        .container-form {
            margin-top: 100px; /* Aquí decides qué tan abajo quieres que flote */
        }

        .card {
            width: 100%;
            max-width: 500px;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            background-color: rgba(255, 255, 255, 0.85);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: 600;
        }

        .form-control, .form-select {
            margin-bottom: 15px;
        }

        .btn-primary {
            padding: 10px 0;
        }

        @media (max-width: 576px) {
            .card {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
	<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="row justify-content-center w-100">
        <div class="col-12 col-md-5 col-lg-5">
            <div class="card p-4">
            	<h1>Registro de Empresa</h1>
            	
           		<form:form action="/registroSesionEmpresa" method="POST" modelAttribute="nuevaEmpresa">
                
                <!-- Datos de la Empresa -->
                <div class="mb-3">
                    <form:label path="nombreEmpresa">Nombre de Empresa</form:label>
                    <form:input path="nombreEmpresa" class="form-control"/>
                    <form:errors path="nombreEmpresa" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="razonSocial">Razón Social</form:label>
                    <form:input path="razonSocial" class="form-control"/>
                    <form:errors path="razonSocial" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="rutEmpresa">RUT de la Empresa</form:label>
                    <form:input path="rutEmpresa" class="form-control"/>
                    <form:errors path="rutEmpresa" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="emailEmpresa">Email de la Empresa</form:label>
                    <form:input path="emailEmpresa" class="form-control"/>
                    <form:errors path="emailEmpresa" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="telefonoEmpresa">Teléfono de la Empresa</form:label>
                    <form:input path="telefonoEmpresa" class="form-control"/>
                    <form:errors path="telefonoEmpresa" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="sitioWeb">Sitio Web</form:label>
                    <form:input path="sitioWeb" class="form-control"/>
                    <form:errors path="sitioWeb" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="direccionEmpresa">Dirección de la Empresa</form:label>
                    <form:input path="direccionEmpresa" class="form-control"/>
                    <form:errors path="direccionEmpresa" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="sucursales">Cantidad de Sucursales</form:label>
                    <form:input path="sucursales" type="number" class="form-control"/>
                    <form:errors path="sucursales" class="text-danger"/>
                </div>
                
                <div class="mb-3">
                    <form:label path="pais">País</form:label>
                    <form:input path="pais" class="form-control"/>
                    <form:errors path="pais" class="text-danger"/>
                </div>

                <!-- Datos del Contacto -->
                <h3>Datos del Contacto</h3>

                <div class="mb-3">
                    <form:label path="nombreContacto">Nombre del Contacto</form:label>
                    <form:input path="nombreContacto" class="form-control"/>
                    <form:errors path="nombreContacto" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="apellidoContacto">Apellido del Contacto</form:label>
                    <form:input path="apellidoContacto" class="form-control"/>
                    <form:errors path="apellidoContacto" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="rutContacto">RUT del Contacto</form:label>
                    <form:input path="rutContacto" class="form-control"/>
                    <form:errors path="rutContacto" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="fechaNacimiento">Fecha de Nacimiento</form:label>
                    <form:input path="fechaNacimiento" type="date" class="form-control"/>
                    <form:errors path="fechaNacimiento" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="generoContacto">Género</form:label>
                    <form:select path="generoContacto" class="form-control">
                        <form:option value="">Seleccione</form:option>
                        <form:option value="masculino">Masculino</form:option>
                        <form:option value="femenino">Femenino</form:option>
                        <form:option value="otro">Otro</form:option>
                    </form:select>
                    <form:errors path="generoContacto" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="emailContacto">Email del Contacto</form:label>
                    <form:input path="emailContacto" class="form-control"/>
                    <form:errors path="emailContacto" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="telefonoContacto">Teléfono del Contacto</form:label>
                    <form:input path="telefonoContacto" class="form-control"/>
                    <form:errors path="telefonoContacto" class="text-danger"/>
                </div>

                <!-- Contraseña -->
                <div class="mb-3">
                    <form:label path="password">Contraseña</form:label>
                    <form:password path="password" class="form-control"/>
                    <form:errors path="password" class="text-danger"/>
                </div>

                <div class="mb-3">
                    <form:label path="confirmacion">Confirmar Contraseña</form:label>
                    <form:password path="confirmacion" class="form-control"/>
                    <form:errors path="confirmacion" class="text-danger"/>
                </div>

                <!-- Botón de Envío -->
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Registrar</button>
                </div>
           	 </form:form>
        	</div>
    	</div>
  	 </div>
   </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
