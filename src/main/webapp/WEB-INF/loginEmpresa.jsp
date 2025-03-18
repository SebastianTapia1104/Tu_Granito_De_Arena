<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio de Sesión</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <style>
    body {
      background-image: url("https://images.unsplash.com/photo-1426604966848-d7adac402bff?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbGV6YSUyMDRrfGVufDB8fDB8fHww");
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 0;
      font-family: Arial, sans-serif;
    }

    .form-container {
      background-color: rgba(255, 255, 255, 0.95);
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
      width: 100%;
      max-width: 400px;
    }

    .form-container h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #333;
    }

    .form-control:focus {
      border-color: #007bff;
      box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    .btn-primary {
      background-color: #007bff;
      border-color: #007bff;
    }

    .btn-primary:hover {
      background-color: #0056b3;
      border-color: #004085;
    }

    .text-link {
      display: block;
      margin-top: 15px;
      text-align: center;
    }

    header img {
      display: block;
      margin: 0 auto 20px;
      max-height: 120px;
    }

  </style>

</head>
<body>
  <div class="form-container">
    <header>
      <h2> 
        <img src="https://i.ibb.co/DgYwDM32/boseto.png" alt="Logo">
      </h2>
    </header>
    
     <h2>Iniciar Sesión</h2>
    
    <form:form action="/iniciarSesionEmpresa" method="POST" modelAttribute="loginEmpresa">
      
      <div class="mb-3">
        <form:label path="emailLogin" class="form-label">E-mail:</form:label>
        <form:input path="emailLogin" class="form-control" type="email" placeholder="correo@empresa.com"/>
        <form:errors path="emailLogin" class="text-danger" />
      </div>
      
      <div class="mb-3">
        <form:label path="rutEmpresa" class="form-label">Rut:</form:label>
        <form:input path="rutEmpresa" class="form-control" placeholder="12345678	"/>
        <form:errors path="rutEmpresa" class="text-danger" />
      </div>
      
      <div class="mb-3">
        <form:label path="passwordLogin" class="form-label">Contraseña:</form:label>
        <form:password path="passwordLogin" class="form-control" placeholder="Ingrese su contraseña"/>
        <form:errors path="passwordLogin" class="text-danger" />
      </div>
      
      <div class="d-grid">
        <input type="submit" class="btn btn-primary" value="Iniciar Sesión">
      </div>
      
      <a href="/registroEmpresa" class="text-link">¿No tienes cuenta? Regístrate</a>
    
    </form:form>
    
  </div>
</body>
</html>
