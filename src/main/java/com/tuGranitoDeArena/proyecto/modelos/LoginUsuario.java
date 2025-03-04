package com.tuGranitoDeArena.proyecto.modelos;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public class LoginUsuario {

	@NotBlank(message="El email es obligatorio.")
	@Email(message="El correo no es válido.")
	private String emailLogin;
	
	@NotBlank(message="La contraseña es obligatoria.")
	private String passwordLogin;
	

	public LoginUsuario() {}

	public String getEmailLogin() {
		return emailLogin;
	}

	public void setEmailLogin(String emailLogin) {
		this.emailLogin = emailLogin;
	}

	public String getPasswordLogin() {
		return passwordLogin;
	}

	public void setPasswordLogin(String passwordLogin) {
		this.passwordLogin = passwordLogin;
	} 
}

