package com.tuGranitoDeArena.proyecto.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tuGranitoDeArena.proyecto.modelos.Empresa;
import com.tuGranitoDeArena.proyecto.modelos.Proyecto;
import com.tuGranitoDeArena.proyecto.modelos.Usuario;
import com.tuGranitoDeArena.proyecto.servicios.ServicioProyectos;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorDashboard {

	@Autowired
	private ServicioProyectos servProyectos;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session,
							Model model /*Enviar información del método al JSP*/ ) {
		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
		//Generar la lista con los proyectos
		List<Proyecto> proyectos = servProyectos.todosLosProyectos();
		
		//Enviar esa lista a dashboard
		model.addAttribute("proyectos", proyectos);
		
		return "dashboard.jsp";
	}
	
	@GetMapping("/detalle/{id}")
	public String detalle(HttpSession session,
							Model model,
							@PathVariable("id")Long id) {
		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
		//Busca proyecto con id
		Proyecto proyecto = servProyectos.buscarProyecto(id);
		
		//Anade el proyecto con model y lo manda a detalle.jsp
		model.addAttribute("proyecto", proyecto);
		
		if(session.getAttribute("usuarioEnSesion") != null && session.getAttribute("empresaEnSesion") == null){
			//Enviar el usuario en sesión actualizado
			Usuario usuarioEnSesion = (Usuario)session.getAttribute("usuarioEnSesion"); //Obteniendo de la sesión el objeto usuario
			Usuario usuario = servProyectos.buscarUsuario(usuarioEnSesion.getId());
			model.addAttribute("usuario", usuario);
		}
		
		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") != null){
			//Enviar el empresa en sesión actualizado
			Empresa empresaEnSesion = (Empresa)session.getAttribute("empresaEnSesion"); //Obteniendo de la sesión el objeto empresa
			Empresa empresa = servProyectos.buscarEmpresa(empresaEnSesion.getId());
			model.addAttribute("empresa", empresa);
		}
		
		return "detalle.jsp";
	}
	
	@GetMapping("/nuevo") //Agregar nuevo proyecto
 	public String nuevo(HttpSession session,
 			@ModelAttribute("nuevoProyecto")Proyecto nuevoProyecto) {
		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}else if(session.getAttribute("usuarioEnSesion") instanceof Usuario) {
			return "redirect:/dashboard";
		}
 		
 		return "nuevo.jsp";
 	}
	
	@PostMapping("/crear")
	public String crear(@Valid @ModelAttribute("nuevoProyecto") Proyecto nuevoProyecto,
						BindingResult result) {
		
		if(result.hasErrors()) {
			return "nuevo.jsp";
		
		} else {
			servProyectos.guardarProyecto(nuevoProyecto);
			return "redirect:/dashboard";
		}
		
	}
 	
 	@GetMapping("/editar/{id}")
 	public String editar(HttpSession session,
 			Model model,
 			@PathVariable("id")Long id,
 			@ModelAttribute("proyecto")Proyecto proyecto) {
 		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
 		}else if(session.getAttribute("usuarioEnSesion") != null && session.getAttribute("empresaEnSesion") == null) {
 			return "redirect:/dashboard";
 		}
 		
 		
 		//Busca proyecto con id
 		Proyecto proyectoEditar = servProyectos.buscarProyecto(id);
 		
 		//Double Check: Empresa En empresa es la creador
		Empresa empresaEnSesion = (Empresa)session.getAttribute("empresaEnSesion"); //Obteniendo de la sesión el objeto empresa
		if(empresaEnSesion.getId() !=  proyectoEditar.getCreador().getId()) {
			return "redirect:/dashboard";
		}
 				
 		//Anade el proyecto con model y lo manda a detalle.jsp
 		model.addAttribute("proyecto", proyectoEditar);
 		
 		return "editar.jsp" ;
 	}
 	
 	@PutMapping("/actualizar/{id}") //Forzosamente debe llamarse id
	public String actualizar(@Valid @ModelAttribute("proyecto") Proyecto proyecto,
							 BindingResult result /*Mostrar e identificar los errores*/  ) {
		
		if(result.hasErrors()) {
			return "editar.jsp";
		} else {
			servProyectos.guardarProyecto(proyecto);
			return "redirect:/dashboard";
		}	
	}
 	
 	@GetMapping("/perfil")
	public String compras(HttpSession session,
						    Model model) {
		/*===== Revisar que el usuario haya iniciado sesión =====*/
 		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
		if(session.getAttribute("usuarioEnSesion") != null && session.getAttribute("empresaEnSesion") == null){
			//Enviar el usuario en sesión actualizado
			Usuario usuarioEnSesion = (Usuario)session.getAttribute("usuarioEnSesion"); //Obteniendo de la sesión el objeto usuario
			Usuario usuario = servProyectos.buscarUsuario(usuarioEnSesion.getId());
			model.addAttribute("usuario", usuario);
		}
		
		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") != null){
			//Enviar el empresa en sesión actualizado
			Empresa empresaEnSesion = (Empresa)session.getAttribute("empresaEnSesion"); //Obteniendo de la sesión el objeto empresa
			Empresa empresa = servProyectos.buscarEmpresa(empresaEnSesion.getId());
			model.addAttribute("empresa", empresa);
		}
		
		return "perfil.jsp";
	}
 	
 	@GetMapping("/buscar") // localhost:8080/buscar?palabra=Hannibal
	public String buscar(@RequestParam(value="palabra") String palabra,
						HttpSession session,
					    Model model) {
 		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
		List<Proyecto> proyectos = servProyectos.buscarProyectoConPalabra(palabra);
		model.addAttribute("proyectos", proyectos);
		
		return "dashboard.jsp";
 		
	}
 	
 	@GetMapping("/borrar/{id}")
 	public String borrar(@PathVariable("id")Long id, HttpSession session) {
 		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
 		servProyectos.borrarProyecto(id);
		return "redirect:/dashboard";
 	}
 	
 	
 	@GetMapping("/sobreNosotros")
 	public String nosotros(HttpSession session) {
 		if(session.getAttribute("usuarioEnSesion") == null && session.getAttribute("empresaEnSesion") == null){
			return "redirect:/";
		}
		
 		return "nosotros.jsp";
 	}
 }