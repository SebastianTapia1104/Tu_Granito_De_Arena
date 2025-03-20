<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Estilos personalizados -->
    <style>
        body {
            background-image: url("https://images.unsplash.com/photo-1426604966848-d7adac402bff?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbGV6YSUyMDRrfGVufDB8fDB8fHww");
            background-size: cover;
            background-position: center;
            height: 100vh;
            padding: 20px;
            background-attachment: fixed;
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
                    <h2>Registro de Usuario</h2>

                    <form:form action="/registroSesionUsuario" method="POST" modelAttribute="nuevoUsuario">
                    
                        <div class="mb-3">
                            <form:label path="nombre" class="form-label">Nombre:</form:label>
                            <form:input path="nombre" class="form-control"/>
                            <form:errors path="nombre" class="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="apellido" class="form-label">Apellido:</form:label>
                            <form:input path="apellido" class="form-control"/>
                            <form:errors path="apellido" class="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="email" class="form-label">Correo Electrónico:</form:label>
                            <form:input path="email" class="form-control"/>
                            <form:errors path="email" class="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="password" class="form-label">Contraseña:</form:label>
                            <form:password path="password" class="form-control"/>
                            <form:errors path="password" class="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="confirmacion" class="form-label">Confirmar Contraseña:</form:label>
                            <form:password path="confirmacion" class="form-control"/>
                            <form:errors path="confirmacion" class="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="cumpleanios" class="form-label">Fecha de Nacimiento:</form:label>
                            <form:input type="date" path="cumpleanios" class="form-control"/>
                            <form:errors path="cumpleanios" class="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="pais" class="form-label">País:</form:label>
                            <form:input path="pais" class="form-control"/>
                            <form:errors path="pais" class="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="genero" class="form-label">Género:</form:label>
                            <form:select path="genero" class="form-select">
                                <form:option value="Masculino" label="Masculino"/>
                                <form:option value="Femenino" label="Femenino"/>
                                <form:option value="Otro" label="Otro"/>
                            </form:select>
                            <form:errors path="genero" class="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="telefono" class="form-label">Número de Teléfono:</form:label>
                            <form:input path="telefono" class="form-control" placeholder="+56912345678"/>
                            <form:errors path="telefono" class="text-danger"/>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Registrarse</button>
                        </div>
                    
                    </form:form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
