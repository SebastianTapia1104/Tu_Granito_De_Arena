package com.tuGranitoDeArena.proyecto.modelos;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="proyectos")
public class Proyecto {

	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message="Por favor proporciona el nombre de tu proyecto.")
	@Size(min=5)
	private String nombreProyecto;
	
	@NotBlank(message="Por favor proporciona la descripcion.")
	private String descripcionProyecto;
	
	@NotNull(message="Por favor proporciona su meta.")
	@Min(100)
	private BigDecimal metaProyecto;
	
	@NotBlank(message="Por favor proporciona una URL válida con la imagen.")
	private String urlImagen;
	
	//DATOS PARA DEPOSITAR
	
	@NotBlank(message="Por favor ingresa una cuenta bancaria valida.")
	private String datosBancarios;
	
	@NotBlank(message="Por favor ingresa tu banco.")
	private String banco;
	
	@NotBlank(message="Por favor ingresa tu tipo de cuenta")
	private String tipoDeCuenta;
	
	@NotBlank(message = "El número de cuenta es obligatorio")
	@Size(min = 10, max = 20, message = "Debe tener entre 10 y 20 caracteres")
	@Pattern(regexp = "^[0-9]+$", message = "El número de cuenta solo debe contener dígitos")
	private String numeroCuenta;
	
	@NotNull
	private Long personasBeneficiadas;
	
	@NotNull
	private BigDecimal cantidadRecaudada;
	
	
	//RELACIONES 

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="empresa_id")
	private Empresa creador;
	
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(name="donadores",
			   joinColumns= @JoinColumn(name="proyecto_id"),
			   inverseJoinColumns= @JoinColumn(name="usuario_id"))
	private List<Usuario> donadores;
	
	@OneToMany(mappedBy="proyecto", fetch=FetchType.LAZY)
	private List<Donacion> donaciones; 
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	//CONSTRUCTOR VACIO
	public Proyecto() {}

	//GETTERS Y SETTERS
	
	public String getDatosBancarios() {
		return datosBancarios;
	}

	public Long getPersonasBeneficiadas() {
		return personasBeneficiadas;
	}


	public void setPersonasBeneficiadas(Long personasBeneficiadas) {
		this.personasBeneficiadas = personasBeneficiadas;
	}


	public BigDecimal getCantidadRecaudada() {
		return cantidadRecaudada;
	}


	public void setCantidadRecaudada(BigDecimal cantidadRecaudada) {
		this.cantidadRecaudada = cantidadRecaudada;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getUrlImagen() {
		return urlImagen;
	}


	public void setUrlImagen(String urlImagen) {
		this.urlImagen = urlImagen;
	}


	public String getBanco() {
		return banco;
	}


	public void setBanco(String banco) {
		this.banco = banco;
	}


	public String getTipoDeCuenta() {
		return tipoDeCuenta;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public void setTipoDeCuenta(String tipoDeCuenta) {
		this.tipoDeCuenta = tipoDeCuenta;
	}


	public String getNumeroCuenta() {
		return numeroCuenta;
	}


	public void setNumeroCuenta(String numeroCuenta) {
		this.numeroCuenta = numeroCuenta;
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


	public BigDecimal getMetaProyecto() {
		return metaProyecto;
	}


	public void setMetaProyecto(BigDecimal metaProyecto) {
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

	public List<Donacion> getDonaciones() {
		return donaciones;
	}

	public void setDonaciones(List<Donacion> donaciones) {
		this.donaciones = donaciones;
	}
	

	@PrePersist //ANTES de crear al usuario 
	protected void onCreate() {
		this.createdAt = new Date(); //DEFAULT CURRENT_TIMESTAMP
	}
	
	@PreUpdate //ANTES de actualizar
	protected void onUpdate() {
		this.updatedAt = new Date(); //DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT TIME_STAMP
	}
		
}
