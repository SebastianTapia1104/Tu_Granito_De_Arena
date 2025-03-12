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
    background-position: center center;
    height: 100vh;
    margin: 0;
    font-family: Arial, sans-serif;
  }

  .container {
    margin-top: 20px;
  }

  header {
    display: flex;
    justify-content: center;
    margin-bottom: 40px;
  }

  header img {
    max-height: 150px;
  }

  .wrapper {
    margin-top: 80px;
    margin-bottom: 80px;
    display: flex;
    justify-content: center;
  }

  .form-signin {
    max-width: 380px;
    width: 100%;
    padding: 15px 35px 45px;
    background-color: rgba(255, 255, 255, 0.95);
    border: 1px solid rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
  }

  .form-signin-heading {
    margin-bottom: 30px;
    text-align: center;
    color: #333;
  }

  .form-signin input[type="text"],
  .form-signin input[type="password"] {
    font-size: 16px;
    height: auto;
    padding: 10px;
    margin-bottom: 20px;
    border-radius: 5px;
    border: 1px solid #ccc;
    width: 100%;
    box-sizing: border-box;
  }

  .form-signin input[type="text"]:focus,
  .form-signin input[type="password"]:focus {
    z-index: 2;
    border-color: #007bff;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
  }

  .checkbox {
    font-weight: normal;
    margin-bottom: 20px;
  }

  .btn-block {
    width: 100%;
  }

  .btn-primary {
    background-color: #007bff;
    border-color: #007bff;
  }

  .btn-primary:hover {
    background-color: #0056b3;
    border-color: #004085;
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
			<form class="form-signin" action="#" method="post">       
				<h2 class="form-signin-heading">Inicio de sesión</h2>
				
				<input type="text" class="form-control" name="username" placeholder="Correo electrónico" required autofocus>
				
				<input type="password" class="form-control" name="contraseña" placeholder="Contraseña" required>
				
				<label class="checkbox">
					<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Recordarme
				</label>
				
				<button class="btn btn-lg btn-primary btn-block" type="submit">Acceso</button>   
			</form>
		</div>
	</div>
</body>
</html>
