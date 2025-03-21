package com.tuGranitoDeArena.proyecto.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tuGranitoDeArena.proyecto.modelos.Donacion;
import com.tuGranitoDeArena.proyecto.repositorios.RepositorioDonaciones;

@Service
public class ServicioDonaciones {

	@Autowired
	private RepositorioDonaciones repoDonaciones;
	
	public Donacion guardarDonacion(Donacion nuevoDonacion){
		return repoDonaciones.save(nuevoDonacion);
	}
	
}