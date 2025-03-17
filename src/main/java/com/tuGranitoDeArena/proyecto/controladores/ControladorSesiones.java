package com.tuGranitoDeArena.proyecto.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tuGranitoDeArena.proyecto.modelos.Empresa;
import com.tuGranitoDeArena.proyecto.modelos.LoginEmpresa;
import com.tuGranitoDeArena.proyecto.modelos.LoginUsuario;
import com.tuGranitoDeArena.proyecto.modelos.Usuario;
import com.tuGranitoDeArena.proyecto.servicios.ServicioEmpresas;
import com.tuGranitoDeArena.proyecto.servicios.ServicioUsuarios;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorSesiones {
	
	@Autowired
	private ServicioUsuarios servUsuarios;
	
	@Autowired
	private ServicioEmpresas servEmpresas;	
	
	@GetMapping("/")
	public String index(HttpSession session) {
		if(session.getAttribute("usuarioEnSesion") != null || session.getAttribute("empresaEnSesion") != null){
			return "redirect:/dashboard";
		}
		return "index.jsp";
	}
	
	@GetMapping("/registroUsuario")
	public String registroUsuario(@ModelAttribute("nuevoUsuario") Usuario nuevoUsuario) {
		return "registroUsuario.jsp";
	}
	
	@PostMapping("/registroSesionUsuario")
	public String registroSesionUsuario(@Valid @ModelAttribute("nuevoUsuario") Usuario nuevoUsuario,
						   BindingResult result,
						   HttpSession session) {
		servUsuarios.registrar(nuevoUsuario, result);
		
		if(result.hasErrors()) {
			return "registroUsuario.jsp";
		} else {
			//Guardo al nuevo usuario en sesión
			session.setAttribute("usuarioEnSesion", nuevoUsuario);
			return "redirect:/dashboard";
		}
		
	}
	
	@GetMapping("/loginUsuario")
	public String loginUsuario(@ModelAttribute("loginUsuario") LoginUsuario loginUsuario) {
		return "loginUsuario.jsp";
	}
	
	@PostMapping("/iniciarSesionUsuario")
	public String iniciarSesionUsuario(@Valid @ModelAttribute("loginUsuario") LoginUsuario loginUsuario,
								BindingResult result,
								HttpSession session) {
		Usuario usuario = servUsuarios.login(loginUsuario, result);
		
		if(result.hasErrors()) {
			return "loginUsuario.jsp";
		} else {
			session.setAttribute("usuarioEnSesion", usuario);
			return "redirect:/dashboard";
		}
		
	}
	
	@GetMapping("/registroEmpresa")
	public String registroEmpresa(@ModelAttribute("nuevaEmpresa") Empresa nuevoEmpresa) {
		return "registroEmpresa.jsp";
	}
	
	@PostMapping("/registroSesionEmpresa")
	public String registroSesionEmpresa(@Valid @ModelAttribute("nuevaEmpresa") Empresa nuevaEmpresa,
						   BindingResult result,
						   HttpSession session) {
		servEmpresas.registrar(nuevaEmpresa, result);
		
		if(result.hasErrors()) {
			return "registroEmpresa.jsp";
		} else {
			//Guardo al nuevo empresa en sesión
			session.setAttribute("empresaEnSesion", nuevaEmpresa);
			return "redirect:/dashboard";
		}
		
	}
	
	@GetMapping("/loginEmpresa")
	public String loginEmpresa(@ModelAttribute("loginEmpresa") LoginEmpresa loginEmpresa) {
		return "loginEmpresa.jsp";
	}
	
	@PostMapping("/iniciarSesionEmpresa")
	public String iniciarSesionEmpresa(@Valid @ModelAttribute("loginEmpresa") LoginEmpresa loginEmpresa,
								BindingResult result,
								HttpSession session) {
		Empresa empresa = servEmpresas.login(loginEmpresa, result);
		
		if(result.hasErrors()) {
			return "loginEmpresa.jsp";
		} else {
			session.setAttribute("empresaEnSesion", empresa);
			return "redirect:/dashboard";
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}