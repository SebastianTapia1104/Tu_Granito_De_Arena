package com.tuGranitoDeArena.proyecto.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tuGranitoDeArena.proyecto.modelos.Empresa;
import com.tuGranitoDeArena.proyecto.modelos.Proyecto;
import com.tuGranitoDeArena.proyecto.modelos.Usuario;
import com.tuGranitoDeArena.proyecto.repositorios.RepositorioEmpresas;
import com.tuGranitoDeArena.proyecto.repositorios.RepositorioProyectos;
import com.tuGranitoDeArena.proyecto.repositorios.RepositorioUsuarios;

@Service //La lógica de mi aplicación. Puente controlador y el repo
public class ServicioProyectos {
	
	@Autowired // Inyección de Dependencias
	private RepositorioProyectos repoProyectos; //Puedo usar cualquier método (consultas) de RepositorioProyectos
	
	@Autowired
	private RepositorioUsuarios repoUsuarios; //Métodos de RepositorioUsuarios
	
	@Autowired
	private RepositorioEmpresas repoEmpresas; //Métodos de RepositorioEmpresas
	
	//Método que regrese todas las Serie
	public List<Proyecto> todosLosProyectos() {
		return repoProyectos.findAll();
	}
	
	//Método que me guarde: Crea un nuevo registro (si no tiene id). Actualiza registro si tiene id
	public Proyecto guardarProyecto(Proyecto proyecto) {
		return repoProyectos.save(proyecto);
	}
	
	//Método que busca una Proyecto
	public Proyecto buscarProyecto(Long id) {
		return repoProyectos.findById(id).orElse(null);
	}
	
	public Usuario buscarUsuario(Long id) {
		return repoUsuarios.findById(id).orElse(null);
	}
	
	public Empresa buscarEmpresa(Long id) {
		return repoEmpresas.findById(id).orElse(null);
	}
	
	//Método que bore la Proyecto
	public void borrarProyecto(Long id) {
		repoProyectos.deleteById(id);
	}
	
	public void guardarDonacion(Long usuarioId, Long serieId) {
		//Obtener al usuario que quiere agregar a fav
		Usuario miUsuario = buscarUsuario(usuarioId);
		
		//Obtener la proyecto que quiero agregar
		Proyecto miProyecto = buscarProyecto(serieId);
		
		miUsuario.getDonaciones().add(miProyecto);
		repoUsuarios.save(miUsuario);
	}
	
	public void borrarDonacion(Long usuarioId, Long serieId) {
		//Obtener al usuario que quiere agregar a fav
		Usuario miUsuario = buscarUsuario(usuarioId);
		
		//Obtener la proyecto que quiero agregar
		Proyecto miProyecto = buscarProyecto(serieId);
		
		miUsuario.getDonaciones().remove(miProyecto);
		repoUsuarios.save(miUsuario);
	}
	
	public void guardarDonador(Long usuarioId, Long serieId) {
		//Obtener al usuario que quiere agregar a fav
		Usuario miUsuario = buscarUsuario(usuarioId);
		
		//Obtener la proyecto que quiero agregar
		Proyecto miProyecto = buscarProyecto(serieId);
		
		boolean usuarioEsNuevo = true;
		for(int i = 0; i < miProyecto.getDonadores().size(); i++) {
			if(miProyecto.getDonadores().get(i).getId() == miUsuario.getId()) {
				usuarioEsNuevo = false;
				break;
			}
		}
		
		if(usuarioEsNuevo){
			miProyecto.getDonadores().add(miUsuario);
		}
		
		
		repoProyectos.save(miProyecto);
	}
	
	public void borrarDonador(Long usuarioId, Long serieId) {
		//Obtener al usuario que quiere agregar a fav
		Usuario miUsuario = buscarUsuario(usuarioId);
		
		//Obtener la proyecto que quiero agregar
		Proyecto miProyecto = buscarProyecto(serieId);
		
		
		
		miProyecto.getDonadores().remove(miUsuario);
		
		repoProyectos.save(miProyecto);
	}
	
	public List<Proyecto> buscarProyectoConPalabra(String palabra) {
		return repoProyectos.findByNombreProyectoContaining(palabra);
	}
	
}