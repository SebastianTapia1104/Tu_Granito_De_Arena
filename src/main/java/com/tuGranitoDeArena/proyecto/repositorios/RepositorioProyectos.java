package com.tuGranitoDeArena.proyecto.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tuGranitoDeArena.proyecto.modelos.Proyecto;

@Repository
public interface RepositorioProyectos extends CrudRepository<Proyecto, Long>{
	
	List<Proyecto> findAll(); //SELECT * FROM proyecto;
	
	//SELECT * FROM proyectos WHERE nombreProyecto LIKE "%palabra%"
	List<Proyecto> findByNombreProyectoContaining(String palabra);
}