package com.tuGranitoDeArena.proyecto.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tuGranitoDeArena.proyecto.modelos.Proyecto;
import com.tuGranitoDeArena.proyecto.repositorios.RepositorioProyectos;

@Service //La lógica de mi aplicación. Puente controlador y el repo
public class ServicioProyectos {
	
	@Autowired // Inyección de Dependencias
	private RepositorioProyectos repoProyectos; //Puedo usar cualquier método (consultas) de RepositorioProyectos
	
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
	
	//Método que bore la Proyecto
	public void borrarProyecto(Long id) {
		repoProyectos.deleteById(id);
	}
}