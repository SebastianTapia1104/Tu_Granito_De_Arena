package com.tuGranitoDeArena.proyecto.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.tuGranitoDeArena.proyecto.modelos.Proyecto;
import com.tuGranitoDeArena.proyecto.servicios.ServicioProyectos;

import jakarta.servlet.http.HttpSession;

@Controller
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
	
	@GetMapping("/detalle/{id}")
	public String detalle(HttpSession session,
							Model model,
							@PathVariable("id")Long id) {
		if(session.getAttribute("usuarioEnSesion") == null){ //verificacion session
			return "redirect:/";
		}
		else if(session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
		//Busca proyecto con id
		Proyecto proyecto = servProyecto.buscarProyecto(id);
		
		//Anade el proyecto con model y lo manda a detalle.jsp
		model.addAttribute("proyecto", proyecto);
		
		return "detalle.jsp";
	}
	
	@GetMapping("/nuevo") //Agregar nuevo proyecto
	public String nuevo(HttpSession session,
			Model model,
			@PathVariable("id")Long id) {
		if(session.getAttribute("usuarioEnSesion") == null){ //verificacion session
			return "redirect:/";
		}
		else if(session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
		return "nuevo.jsp";
	}
	
	@GetMapping("/editar")
	public String editar(HttpSession session,
			Model model,
			@PathVariable("id")Long id) {
		if(session.getAttribute("usuarioEnSesion") == null){ //verificacion session
			return "redirect:/";
		}
		else if(session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
		//Busca proyecto con id
		Proyecto proyecto = servProyecto.buscarProyecto(id);
				
		//Anade el proyecto con model y lo manda a detalle.jsp
		model.addAttribute("proyecto", proyecto);
		
		return "nuevo.jsp" ;
	}
	
	
	
	
}