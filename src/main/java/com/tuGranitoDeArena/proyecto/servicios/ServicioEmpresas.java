package com.tuGranitoDeArena.proyecto.servicios;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.tuGranitoDeArena.proyecto.modelos.Empresa;
import com.tuGranitoDeArena.proyecto.modelos.LoginEmpresa;
import com.tuGranitoDeArena.proyecto.repositorios.RepositorioEmpresas;

@Service
public class ServicioEmpresas {

	@Autowired
	private RepositorioEmpresas repoEmpresas;
	
	//Método que registra al Empresa. 
	//Empresa nuevoEmpresa es la instancia de Empresa llenada con el formulario
	public Empresa registrar(Empresa nuevoEmpresa, BindingResult result) {
		
		//Comparamos password y confirmación
		String password = nuevoEmpresa.getPassword();
		String confirmacion = nuevoEmpresa.getConfirmacion();
		if(!password.equals(confirmacion)) {
			result.rejectValue("confirmacion", "Matches", "Password y Confirmación deben ser iguales");
		}
		
		//Revisar que el email no esté registrado
		String rutEmpresa = nuevoEmpresa.getRutEmpresa();
		Empresa existeEmpresa = repoEmpresas.findByRutEmpresa(rutEmpresa); //Objeto Empresa o null
		if(existeEmpresa != null) {
			result.rejectValue("email", "Unique", "E-mail ya se encuentra registrado.");
		}
		
		if(result.hasErrors()) {
			return null;
		} else {
			String passwordHasheado = BCrypt.hashpw(password, BCrypt.gensalt());
			nuevoEmpresa.setPassword(passwordHasheado);
			return repoEmpresas.save(nuevoEmpresa);
		}
		
	}
	
	//Método que revise las credenciales de inicio de sesión
	public Empresa login(LoginEmpresa datosInicioDeSesion, BindingResult result) {
		
		//Revisamos que exista el correo
		String rutEmpresa = datosInicioDeSesion.getRutEmpresa();
		Empresa existeEmpresa = repoEmpresas.findByRutEmpresa(rutEmpresa); //Objeto Empresa o null
		if(existeEmpresa == null) {
			//El email no está registrado
			result.rejectValue("rutEmpresa", "Unique", "Empresa no registrada");
		} else {
			//Si la contraseña coincide
			if(! BCrypt.checkpw(datosInicioDeSesion.getPasswordLogin(), existeEmpresa.getPassword())) {
				//NO COINCIDEN
				result.rejectValue("passwordLogin", "Matches", "Password incorrecto");
			}
		}
		
		if(result.hasErrors()) {
			return null;
		} else {
			return existeEmpresa;
		}
		
	}
	
}
