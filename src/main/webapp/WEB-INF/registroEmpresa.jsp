<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro Empresa</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600" rel="stylesheet" type="text/css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
    <style>
        body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
        pre, form, fieldset, input, textarea, p, blockquote, th, td { 
            padding:0;
            margin:0;
        }

        fieldset, img {border:0}
        ol, ul, li {list-style:none}
        :focus {outline:none}

        body,
        input,
        textarea,
        select {
            font-family: 'Open Sans', sans-serif;
            font-size: 16px;
            color: #4c4c4c;
        }

        p {
            font-size: 12px;
            width: 150px;
            display: inline-block;
            margin-left: 18px;
        }

        h1 {
            font-size: 32px;
            font-weight: bold;
            color: #4c4c4c;
            text-align: center;
            padding-top: 10px;
            margin-bottom: 10px;
        }

        html {
            background-color: #ffffff;
        }

        .testbox {
            margin: 20px auto;
            width: 343px; 
            height: auto;
            border-radius: 8px/7px; 
            background-color: #ebebeb; 
            box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
            border: solid 1px #cbc9c9;
        }

        input[type=radio] {
            visibility: hidden;
        }

        form {
            margin: 0 30px;
        }

        label.radio {
            cursor: pointer;
            text-indent: 35px;
            display: inline-block;
            position: relative;
            margin-bottom: 15px;
        }

        label.radio:before {
            background: #3a57af;
            content: '';
            position: absolute;
            top: 2px;
            left: 0;
            width: 20px;
            height: 20px;
            border-radius: 100%;
        }

        label.radio:after {
            opacity: 0;
            content: '';
            position: absolute;
            width: 0.5em;
            height: 0.25em;
            background: transparent;
            top: 7.5px;
            left: 4.5px;
            border: 3px solid #ffffff;
            border-top: none;
            border-right: none;
            transform: rotate(-45deg);
        }

        input[type=radio]:checked + label:after {
            opacity: 1;
        }

        hr {
            color: #a9a9a9;
            opacity: 0.3;
        }

        input[type=text],
        input[type=password] {
            width: 200px; 
            height: 39px; 
            border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
            background-color: #fff; 
            box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
            border: solid 1px #cbc9c9;
            margin-left: -5px;
            margin-top: 13px; 
            padding-left: 10px;
        }

        #icon {
            display: inline-block;
            width: 30px;
            background-color: #3a57af;
            padding: 8px 0px 8px 15px;
            margin-left: 15px;
            border-radius: 4px 0px 0px 4px;
            color: white;
            box-shadow: 1px 2px 5px rgba(0,0,0,.09);
        }

        .gender {
            margin-left: 30px;
            margin-bottom: 30px;
        }

        a.button {
            font-size: 14px;
            font-weight: 600;
            color: white;
            padding: 6px 25px 0px 20px;
            margin: 10px 8px 20px 0px;
            display: inline-block;
            float: right;
            text-decoration: none;
            width: 50px; 
            height: 27px; 
            border-radius: 5px; 
            background-color: #3a57af; 
            box-shadow: 0 3px rgba(58,87,175,.75);
            transition: all 0.1s linear 0s; 
            position: relative;
        }

        a.button:hover {
            top: 3px;
            background-color: #2e458b;
            box-shadow: none;
        }

        h2 {
            font-size: 32px;
            font-weight: 300;
            color: #4c4c4c;
            text-align: center;
            padding-top: 10px;
            margin-bottom: 10px;
        }

        body {
            background-image: url("https://images.unsplash.com/photo-1426604966848-d7adac402bff?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbGV6YSUyMDRrfGVufDB8fDB8fHww");
            background-size: cover;
        }

        h3 {
            font-size: 25px;
            font-weight: 300;
            color: #4c4c4c;
            text-align: center;
            padding-top: 10px;
            margin-bottom: 10px;
        }

        header img {
            max-width: 150px;
            display: block;
            margin: 0 auto;
        }

        .container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
		<div class="row">
			<div class="col-6">
	            <h1>Registro de Empresa</h1>
	
	            <form:form action="/registroSesionUsuario" method="POST" modelAttribute="nuevaEmpresa" >
					<div>
						<form:label path="nombreEmpresa" >Nombre de Empresa:</form:label>
						<form:input path="nombreEmpresa" class="form-control" />
						<form:errors path="nombreEmpresa" class="text-danger" />
					</div>
					<div>
						<form:label path="razonSocial" >Razón Social:</form:label>
						<form:input path="razonSocial" class="form-control" />
						<form:errors path="razonSocial" class="text-danger" />
					</div>
					<div>
						<form:label path="rutEmpresa" >Rut:</form:label>
						<form:input path="rutEmpresa" class="form-control" />
						<form:errors path="rutEmpresa" class="text-danger" />
					</div>
					<div>
						<form:label path="emailEmpresa">Email:</form:label>
						<form:input path="emailEmpresa" class="form-control" />
						<form:errors path="emailEmpresa" class="text-danger" />
					</div>
					<div>
						<form:label path="telefonoEmpresa">Telefono:</form:label>
						<form:input path="telefonoEmpresa" class="form-control" />
						<form:errors path="telefonoEmpresa" class="text-danger" />
					</div>
					<div>
						<form:label path="password">Contraseña:</form:label>
						<form:password path="password" class="form-control" />
						<form:errors path="password" class="text-danger" />
					</div>
					<div>
						<form:label path="confirmacion" >Confirmar contraseña:</form:label>
						<form:password path="confirmacion" class="form-control" />
						<form:errors path="confirmacion" class="text-danger" />
					</div>
					<div>
						<form:label path="sitioWeb">Sitio Web:</form:label>
						<form:input path="sitioWeb" class="form-control" />
						<form:errors path="sitioWeb" class="text-danger" />
					</div>
					<div>
						<form:label path="direccionEmpresa">Dirección de la Empresa:</form:label>
						<form:input path="direccionEmpresa" class="form-control" />
						<form:errors path="direccionEmpresa" class="text-danger" />
					</div>
					<div>
						<form:label path="sucursales">Sucursales:</form:label>
						<form:input path="sucursales" class="form-control" />
						<form:errors path="sucursales" class="text-danger" />
					</div>
					<div>
						<form:label path="nombreContacto">Nombre del Contacto:</form:label>
						<form:input path="nombreContacto" class="form-control" />
						<form:errors path="nombreContacto" class="text-danger" />
					</div>
					<div>
						<form:label path="apellidoContacto">Apellido del Contacto:</form:label>
						<form:input path="apellidoContacto" class="form-control" />
						<form:errors path="apellidoContacto" class="text-danger" />
					</div>
					<div>
						<form:label path="rutContacto">Rut del Contacto:</form:label>
						<form:input path="rutContacto" class="form-control" />
						<form:errors path="rutContacto" class="text-danger" />
					</div>
					<div>
						<form:label path="fechaNacimiento">Fecha de Nacimiento del Contacto:</form:label>
						<form:input type="date" path="fechaNacimiento" class="form-control" />
						<form:errors path="fechaNacimiento" class="text-danger" />
					</div>
					<div>
						<form:label path="generoContacto">Género del Contacto:</form:label>
						<form:select path="generoContacto" class="form-control">
							<form:option value="masculino">Masculino</form:option>
							<form:option value="femenino">Femenino</form:option>
							<form:option value="otro">Otro</form:option>
						</form:select>
						<form:errors path="generoContacto" class="text-danger" />
					</div>
					<div>
						<form:label path="emailContacto">Email del Contacto:</form:label>
						<form:input path="emailContacto" class="form-control" />
						<form:errors path="emailContacto" class="text-danger" />
					</div>
					<div>
						<form:label path="telefonoContacto">Teléfono del Contacto:</form:label>
						<form:input path="telefonoContacto" class="form-control" />
						<form:errors path="telefonoContacto" class="text-danger" />
					</div>
					<input type="submit" class="btn btn-primary mt-3" value="Registrarme" >
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
