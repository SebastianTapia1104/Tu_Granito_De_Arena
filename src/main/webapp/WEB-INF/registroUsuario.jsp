<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registro Persona</title>
  
  <!-- Fuentes y font-awesome -->
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">

  <!-- CSS interno -->
  <style>
    body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td { 
      padding:0;
      margin:0;
    }

    fieldset, img {border:0}
    ol, ul, li {list-style:none}
    :focus {outline:none}

    body, input, textarea, select {
      font-family: 'Open Sans', sans-serif;
      font-size: 16px;
      color: #4c4c4c;
    }

    html {
      background-color: #ffffff;
    }

    body {
      background-image: url("https://images.unsplash.com/photo-1426604966848-d7adac402bff?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbGV6YSUyMDRrfGVufDB8fDB8fHww");
      background-size: cover;
    }

    h1 {
      font-size: 32px;
      font-weight: bold;
      color: #4c4c4c;
      text-align: center;
      padding-top: 10px;
      margin-bottom: 10px;
    }

    h2 {
      font-size: 32px;
      font-weight: 300;
      color: #4c4c4c;
      text-align: center;
      padding-top: 10px;
      margin-bottom: 10px;
    }

    h3 {
      font-size: 25px;
      font-weight: 300;
      color: #4c4c4c;
      text-align: center;
      margin-bottom: 10px;
    }

    p {
      font-size: 12px;
      width: 150px;
      display: inline-block;
      margin-left: 18px;
    }

    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .testbox {
      margin: 20px auto;
      width: 343px; 
      height: auto; 
      border-radius: 8px; 
      background-color: #ebebeb; 
      box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
      border: solid 1px #cbc9c9;
      padding-bottom: 20px;
    }

    form {
      margin: 0 30px;
    }

    hr {
      color: #a9a9a9;
      opacity: 0.3;
      margin: 10px 0;
    }

    input[type=text], input[type=password] {
      width: 200px; 
      height: 39px; 
      border-radius: 0px 4px 4px 0px; 
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
      margin-top: 30px;
      margin-bottom: 30px;
      display: flex;
      justify-content: space-around;
    }

    input[type=radio] {
      visibility: hidden;
    }

    label.radio {
      cursor: pointer;
      text-indent: 35px;
      position: relative;
      margin-bottom: 15px;
    }

    label.radio:before {
      background: #3a57af;
      content:'';
      position: absolute;
      top:2px;
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

    a.button {
      font-size: 14px;
      font-weight: 600;
      color: white;
      padding: 6px 25px 0px 20px;
      margin: 10px 8px 20px 0px;
      display: inline-block;
      float: right;
      text-decoration: none;
      width: 100px;
      height: 27px; 
      border-radius: 5px; 
      background-color: #3a57af; 
      box-shadow: 0 3px rgba(58,87,175,.75);
      transition: all 0.1s linear 0s; 
      position: relative;
      text-align: center;
      line-height: 27px;
    }

    a.button:hover {
      top: 3px;
      background-color:#2e458b;
      box-shadow: none;
    }

    header img {
      max-height: 50px;
    }

  </style>
</head>

<body>
  <div class="container">
		<div class="row">
			<div class="col-6">
	            <h1>Registro de Usuario</h1>
	
	            <form:form action="/registro" method="POST" modelAttribute="nuevoUsuario">
				
				<!-- Nombre -->
				<div class="mb-3">
					<form:label path="nombre">Nombre:</form:label>
					<form:input path="nombre" class="form-control"/>
					<form:errors path="nombre" class="text-danger"/>
				</div>
				
				<!-- Apellido -->
				<div class="mb-3">
					<form:label path="apellido">Apellido:</form:label>
					<form:input path="apellido" class="form-control"/>
					<form:errors path="apellido" class="text-danger"/>
				</div>
				
				<!-- Email -->
				<div class="mb-3">
					<form:label path="email">Correo Electrónico:</form:label>
					<form:input path="email" class="form-control"/>
					<form:errors path="email" class="text-danger"/>
				</div>
				
				<!-- Password -->
				<div class="mb-3">
					<form:label path="password">Contraseña:</form:label>
					<form:password path="password" class="form-control"/>
					<form:errors path="password" class="text-danger"/>
				</div>
				
				<!-- Confirmación de Password -->
				<div class="mb-3">
					<form:label path="confirmacion">Confirmar Contraseña:</form:label>
					<form:password path="confirmacion" class="form-control"/>
					<form:errors path="confirmacion" class="text-danger"/>
				</div>
				
				<!-- Cumpleaños -->
				<div class="mb-3">
					<form:label path="cumpleanios">Fecha de Nacimiento:</form:label>
					<form:input type="date" path="cumpleanios" type="date" class="form-control"/>
					<form:errors path="cumpleanios" class="text-danger"/>
				</div>
				
				<!-- País -->
				<div class="mb-3">
					<form:label path="pais">País:</form:label>
					<form:input path="pais" class="form-control"/>
					<form:errors path="pais" class="text-danger"/>
				</div>
				
				<!-- Género -->
				<div class="mb-3">
					<form:label path="genero">Género:</form:label>
					<form:select path="genero" class="form-select">
						<form:option value="Masculino" label="Masculino" />
						<form:option value="Femenino" label="Femenino" />
						<form:option value="Otro" label="Otro" />
					</form:select>
					<form:errors path="genero" class="text-danger"/>
				</div>
				
				<!-- Teléfono -->
				<div class="mb-3">
					<form:label path="telefono">Número de Teléfono:</form:label>
					<form:input path="telefono" class="form-control" placeholder="+56912345678"/>
					<form:errors path="telefono" class="text-danger"/>
				</div>
				
				<!-- Botón de Enviar -->
				<input type="submit" class="btn btn-primary mt-3" value="Registrarse">
				
			</form:form>
			</div>
		</div>
	</div>
</body>
</html>
