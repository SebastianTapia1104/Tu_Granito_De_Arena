package com.tuGranitoDeArena.proyecto.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tuGranitoDeArena.proyecto.modelos.Usuario;

@Repository
public interface RepositorioUsuarios extends CrudRepository<Usuario, Long> {
	
	Usuario findByEmail(String email); //SELECT * FROM usuarios WHERE email = <email>
	
}