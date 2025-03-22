package com.tuGranitoDeArena.proyecto.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tuGranitoDeArena.proyecto.modelos.Donacion;

@Repository
public interface RepositorioDonaciones extends CrudRepository<Donacion, Long> {
	
	List<Donacion> findAll();
	
}