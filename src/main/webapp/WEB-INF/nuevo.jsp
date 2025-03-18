<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar Nuevo Proyecto</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        .form-title {
            margin-bottom: 20px;
            text-align: center;
        }
        .btn-submit {
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2 class="form-title">Agregar Nuevo Proyecto</h2>
        
        <form action="/proyectos/agregar" method="POST">

            <!-- Nombre Proyecto -->
            <div class="mb-3">
                <label for="nombreProyecto" class="form-label">Nombre del Proyecto</label>
                <input type="text" class="form-control" id="nombreProyecto" name="nombreProyecto" minlength="5" required>
            </div>

            <!-- Descripción Proyecto -->
            <div class="mb-3">
                <label for="descripcionProyecto" class="form-label">Descripción del Proyecto</label>
                <textarea class="form-control" id="descripcionProyecto" name="descripcionProyecto" rows="4" required></textarea>
            </div>

            <!-- Meta Proyecto -->
            <div class="mb-3">
                <label for="metaProyecto" class="form-label">Meta del Proyecto (mínimo $100)</label>
                <input type="number" class="form-control" id="metaProyecto" name="metaProyecto" min="100" step="0.01" required>
            </div>

            <!-- URL Imagen -->
            <div class="mb-3">
                <label for="urlImagen" class="form-label">URL de la Imagen</label>
                <input type="url" class="form-control" id="urlImagen" name="urlImagen" required>
            </div>

            <hr>

            <h4>Datos Bancarios</h4>

            <!-- Datos Bancarios -->
            <div class="mb-3">
                <label for="datosBancarios" class="form-label">Datos Bancarios</label>
                <input type="text" class="form-control" id="datosBancarios" name="datosBancarios" required>
            </div>

            <!-- Banco -->
            <div class="mb-3">
                <label for="banco" class="form-label">Banco</label>
                <input type="text" class="form-control" id="banco" name="banco" required>
            </div>

            <!-- Tipo de Cuenta -->
            <div class="mb-3">
                <label for="tipoDeCuenta" class="form-label">Tipo de Cuenta</label>
                <select class="form-select" id="tipoDeCuenta" name="tipoDeCuenta" required>
                    <option value="">Selecciona el tipo</option>
                    <option value="Cuenta Corriente">Cuenta Corriente</option>
                    <option value="Cuenta Vista">Cuenta Vista</option>
                    <option value="Cuenta de Ahorro">Cuenta de Ahorro</option>
                </select>
            </div>

            <!-- Número de Cuenta -->
            <div class="mb-3">
                <label for="numeroCuenta" class="form-label">Número de Cuenta</label>
                <input type="text" class="form-control" id="numeroCuenta" name="numeroCuenta" pattern="[0-9]{10,20}" required
                       title="Debe tener entre 10 y 20 dígitos">
            </div>

            <hr>

            <!-- Personas Beneficiadas -->
            <div class="mb-3">
                <label for="personasBeneficiadas" class="form-label">Personas Beneficiadas</label>
                <input type="number" class="form-control" id="personasBeneficiadas" name="personasBeneficiadas" min="0" required>
            </div>

            <!-- Cantidad Recaudada -->
            <div class="mb-3">
                <label for="cantidadRecaudada" class="form-label">Cantidad Recaudada</label>
                <input type="number" class="form-control" id="cantidadRecaudada" name="cantidadRecaudada" min="0" step="0.01" required>
            </div>

            <!-- Botón -->
            <button type="submit" class="btn btn-primary btn-submit">Agregar Proyecto</button>

        </form>
    </div>
</div>

<!-- Bootstrap JS (opcional, para funcionalidades como validaciones o modals) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
