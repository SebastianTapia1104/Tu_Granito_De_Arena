package com.tuGranitoDeArena.proyecto.repositorios;

import org.springframework.data.repository.CrudRepository;

import com.tuGranitoDeArena.proyecto.modelos.Empresa;

public interface RepositorioEmpresas extends CrudRepository<Empresa, Long> {
	
	Empresa findByRutEmpresa(String rutEmpresa); //SELECT * FROM empresa WHERE rutEmpresa
	
}