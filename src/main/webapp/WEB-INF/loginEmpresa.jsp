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
    background-attachment: fixed;
  }

  .wrapper {
    margin-top: 80px;
    margin-bottom: 80px;
  }

  .form-signin {
    max-width: 380px;
    padding: 15px 35px 45px;
    margin: 0 auto;
    background-color: #fff;
    border: 1px solid rgba(0, 0, 0, 0.1);
  }

  .form-signin-heading,
  .checkbox {
    margin-bottom: 30px;
  }

  .checkbox {
    font-weight: normal;
  }

  .form-control {
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    box-sizing: border-box;
  }

  .form-control:focus {
    z-index: 2;
  }

  input[type="text"] {
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
  }

  input[type="password"] {
    margin-bottom: 20px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
  }

  header {
    display: flex;
    justify-content: center;
  }

  header img {
    max-height: 100px; /* Opcional: ajusta el tamaño del logo */
  }
</style>

</head>
<body>
  <div class="container">
    <header>
      <h2> 
        <img src="https://i.ibb.co/DgYwDM32/boseto.png" alt="Logo">
      </h2>
    </header>
    
    <div class="wrapper">
      <form class="form-signin">       
        <h2 class="form-signin-heading">Inicio de sesión</h2>
        <input type="text" class="form-control" name="username" placeholder="Correo de Empresa" required autofocus />
        <input type="password" class="form-control" name="contraseña" placeholder="Contraseña" required/>      
        
        <label class="checkbox">
          <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Recordarme
        </label>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Acceso</button>   
      </form>
    </div>
    
  </div>
</body>
</html>
