package com.tuGranitoDeArena.proyecto.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.tuGranitoDeArena.proyecto.modelos.Proyecto;
import com.tuGranitoDeArena.proyecto.servicios.ServicioProyectos;

import jakarta.servlet.http.HttpSession;

public class ControladorDashboard {

	@Autowired
	private ServicioProyectos servProyecto;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session,
							Model model /*Enviar información del método al JSP*/ ) {
		if(session.getAttribute("usuarioEnSesion") == null){
			return "redirect:/";
		}
		else if(session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
		//Generar la lista con los proyectos
		List<Proyecto> proyectos = servProyecto.todosLosProyectos();
		
		//Enviar esa lista a dashboard
		model.addAttribute("proyectos", proyectos);
		
		return "dashboard.jsp";
	}
}