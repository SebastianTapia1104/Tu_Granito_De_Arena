package com.tuGranitoDeArena.proyecto.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.tuGranitoDeArena.proyecto.modelos.Donacion;

public interface RepositorioDonaciones extends CrudRepository<Donacion, Long> {
	
	List<Donacion> findAll();
	
}