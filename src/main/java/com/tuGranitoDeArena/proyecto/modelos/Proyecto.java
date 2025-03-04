package com.tuGranitoDeArena.proyecto.modelos;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="proyectos")
public class Proyecto {

	@NotBlank(message="Por favor proporciona el nombre de tu proyecto.")
	@Size(min=5)
	private String nombreProyecto;
	
	@NotBlank(message="Por favor proporciona la descripcion.")
	private String descripcionProyecto;
	
	@NotNull(message="Por favor proporciona su meta.")
	@Min(100)
	private Float metaProyecto;
	
	//DATOS PARA DEPOSITAR
	
	@NotBlank(message="Por favor ingresa una cuenta bancaria valida.")
	private String datosBancarios;
	
	
	//RELACIONES 

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="empresa_id")
	private Empresa creador;
	
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(name="donadores",
			   joinColumns= @JoinColumn(name="proyecto_id"),
			   inverseJoinColumns= @JoinColumn(name="usuario_id"))
	private List<Usuario> donadores;
	
	//CONSTRUCTOR VACIO
	public Proyecto() {}

	
	//GETTERS Y SETTERS
	
	
	public String getDatosBancarios() {
		return datosBancarios;
	}


	public void setDatosBancarios(String datosBancarios) {
		this.datosBancarios = datosBancarios;
	}

	
	public String getNombreProyecto() {
		return nombreProyecto;
	}

	public void setNombreProyecto(String nombreProyecto) {
		this.nombreProyecto = nombreProyecto;
	}

	public String getDescripcionProyecto() {
		return descripcionProyecto;
	}

	public void setDescripcionProyecto(String descripcionProyecto) {
		this.descripcionProyecto = descripcionProyecto;
	}

	public Float getMetaProyecto() {
		return metaProyecto;
	}

	public void setMetaProyecto(Float metaProyecto) {
		this.metaProyecto = metaProyecto;
	}

	public Empresa getCreador() {
		return creador;
	}

	public void setCreador(Empresa creador) {
		this.creador = creador;
	}

	public List<Usuario> getDonadores() {
		return donadores;
	}

	public void setDonadores(List<Usuario> donadores) {
		this.donadores = donadores;
	}
	
	
	
}
