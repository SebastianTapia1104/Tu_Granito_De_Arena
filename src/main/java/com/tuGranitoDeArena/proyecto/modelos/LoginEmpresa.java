package com.tuGranitoDeArena.proyecto.modelos;

import jakarta.validation.constraints.NotBlank;

public class LoginEmpresa {
		
	private String passwordLogin;
	
	@NotBlank(message="El rut de la empresa es obligatorio.")
	private String rutEmpresa;
	
	public String getRutEmpresa() {
		return rutEmpresa;
	}

	public void setRutEmpresa(String rutEmpresa) {
		this.rutEmpresa = rutEmpresa;
	}

	public LoginEmpresa() {}

	public String getPasswordLogin() {
		return passwordLogin;
	}

	public void setPasswordLogin(String passwordLogin) {
		this.passwordLogin = passwordLogin;
	} 
}

