package com.tuGranitoDeArena.proyecto.modelos;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public class LoginEmpresa {

	@NotBlank(message="El email es obligatorio.")
	@Email(message="El correo no es válido.")
	private String emailLogin;
		
	private String passwordLogin;
	
	@NotBlank(message="El rut de contacto es obligatorio.")
	private String rutContacto;
	
	public String getRutContacto() {
		return rutContacto;
	}

	public void setRutContacto(String rutContacto) {
		this.rutContacto = rutContacto;
	}

	public LoginEmpresa() {}

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

