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
    <header class="d-flex justify-content-between align-center">
      <h2>
        <img src="https://i.ibb.co/DgYwDM32/boseto.png" alt="Logo">
      </h2>
    </header>

    <div class="testbox">
      <h1>Registro</h1>
      <form action="/">
        <hr>
        <div>
          <h3>Persona</h3>
        </div>
        <hr>

        <label id="icon" for="email"><i class="icon-envelope"></i></label>
        <input type="text" name="email" id="email" placeholder="Email" required />

        <label id="icon" for="rut"><i class="icon-user"></i></label>
        <input type="text" name="rut" id="rut" placeholder="Rut" required />

        <label id="icon" for="password"><i class="icon-shield"></i></label>
        <input type="password" name="password" id="password" placeholder="Contraseña" required />

        <label id="icon" for="repeat-password"><i class="icon-shield"></i></label>
        <input type="password" name="repeat-password" id="repeat-password" placeholder="Repetir Contraseña" required />

        <div class="gender">
          <input type="radio" id="male" name="gender" value="Hombre" checked />
          <label for="male" class="radio">Hombre</label>

          <input type="radio" id="female" name="gender" value="Mujer" />
          <label for="female" class="radio">Mujer</label>

          <input type="radio" id="other" name="gender" value="Otro" />
          <label for="other" class="radio">Otro</label>
        </div>

        <p>Para más información leer <br> <a href="#">términos y condiciones</a>.</p>

        <a href="#" class="button">Registrar</a>
      </form>
    </div>
  </div>
</body>
</html>
