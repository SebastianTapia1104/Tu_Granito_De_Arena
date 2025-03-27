<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar Nuevo Proyecto</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">    

    <style>
body {
    background: linear-gradient(to top, #0056b3, #ffc107);
    font-family: 'Arial', sans-serif;
}
.form-container {
    max-width: 700px;
    margin: 50px auto;
    padding: 30px;
    background-color: #ffffff;
    border-radius: 15px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    transition: transform 0.3s;
}
.form-container:hover {
    transform: scale(1.02);
}
.form-title {
    text-align: center;
    font-weight: bold;
    color: #0056b3;
}
.btn-submit {
    width: 100%;
    background-color: #0056b3;
    border: none;
    color: white;
}
.btn-submit:hover {
    background-color: #004494;
}
.input-group-text {
    background-color: #ffc107;
    color: black;
    font-weight: bold;
}
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2 class="form-title">Agregar Nuevo Proyecto</h2>

        <!-- Formulario con Spring -->
        <form:form modelAttribute="nuevoProyecto" action="/crear" method="POST">

<!-- Nombre Proyecto -->
            <div class="mb-3">
                <label for="nombreProyecto" class="form-label">Nombre del Proyecto</label>
                <form:input path="nombreProyecto" class="form-control" id="nombreProyecto" minlength="5" required="true"/>
            </div>

            <!-- Descripción Proyecto -->
            <div class="mb-3">
                <label for="descripcionProyecto" class="form-label">Descripción del Proyecto</label>
                <form:textarea path="descripcionProyecto" class="form-control" id="descripcionProyecto" rows="4" required="true"/>
            </div>


            <!-- Meta Proyecto -->
            <div class="mb-3">
                <label for="metaProyecto" class="form-label">Meta del Proyecto (mínimo $100)</label>
                <form:input type="number" path="metaProyecto" class="form-control" id="metaProyecto" min="100" step="0.01" required="true"/>
            </div>

            <!-- URL Imagen -->
            <div class="mb-3">
                <label for="urlImagen" class="form-label">URL de la Imagen</label>
                <form:input type="url" path="urlImagen" class="form-control" id="urlImagen" required="true"/>
            </div>

            <hr>

            <h4>Datos Bancarios</h4>

            <!-- Datos Bancarios -->
            <div class="mb-3">
                <label for="datosBancarios" class="form-label">Datos Bancarios</label>
                <form:input path="datosBancarios" class="form-control" id="datosBancarios" required="true"/>
            </div>

<!-- Banco -->
<div class="mb-3">
    <label for="banco" class="form-label">Banco</label>
    <form:select path="banco" class="form-select" id="banco" required="true">
        <form:option value="">Selecciona tu banco</form:option>
        <form:option value="Banco de Chile">Banco de Chile</form:option>
        <form:option value="Banco Estado">Banco Estado</form:option>
        <form:option value="Santander">Santander</form:option>
        <form:option value="Scotiabank">Scotiabank</form:option>
        <form:option value="Banco BCI">Banco BCI</form:option>
        <form:option value="Banco Itaú">Banco Itaú</form:option>
        <form:option value="Banco Security">Banco Security</form:option>
        <form:option value="Banco Falabella">Banco Falabella</form:option>
        <form:option value="Banco Ripley">Banco Ripley</form:option>
        <form:option value="Banco Consorcio">Banco Consorcio</form:option>
    </form:select>
</div>


            <!-- Tipo de Cuenta -->
            <div class="mb-3">
                <label for="tipoDeCuenta" class="form-label">Tipo de Cuenta</label>
                <form:select path="tipoDeCuenta" class="form-select" id="tipoDeCuenta" required="true">
                    <form:option value="">Selecciona el tipo</form:option>
                    <form:option value="Cuenta Corriente">Cuenta Corriente</form:option>
                    <form:option value="Cuenta Vista">Cuenta Vista</form:option>
                    <form:option value="Cuenta de Ahorro">Cuenta de Ahorro</form:option>
                </form:select>
            </div>

            <!-- Número de Cuenta -->
            <div class="mb-3">
                <label for="numeroCuenta" class="form-label">Número de Cuenta</label>
                <form:input path="numeroCuenta" class="form-control" id="numeroCuenta" pattern="[0-9]{10,20}" required="true"
                            title="Debe tener entre 10 y 20 dígitos"/>
            </div>

            <hr>

            <!-- Personas Beneficiadas -->
            <div class="mb-3">
                <label for="personasBeneficiadas" class="form-label">Personas Beneficiadas</label>
                <form:input type="number" path="personasBeneficiadas" class="form-control" id="personasBeneficiadas" min="0" required="true"/>
            </div>

            <!-- Cantidad Recaudada -->
            <div class="mb-3">
                <label for="cantidadRecaudada" class="form-label">Cantidad Recaudada</label>
                <form:input type="number" path="cantidadRecaudada" class="form-control" id="cantidadRecaudada" min="0" step="0.01" required="true"/>
            </div>

            <!-- Botón -->
            <button type="submit" class="btn btn-primary btn-submit">Agregar Proyecto</button>
			<form:hidden path="creador" value="${empresaEnSesion.id}"/>
        </form:form>
    </div>
</div>

<!-- Bootstrap JS (opcional, para funcionalidades como validaciones o modals) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
