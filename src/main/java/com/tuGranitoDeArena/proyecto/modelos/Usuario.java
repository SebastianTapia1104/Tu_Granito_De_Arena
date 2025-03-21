package com.tuGranitoDeArena.proyecto.modelos;

import java.time.LocalDate;
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
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="usuarios")
public class Usuario {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message="Por favor ingresa tu nombre")
	@Size(min=2, max=100, message="El nombre debe tener al menos 2 caracteres.")
	private String nombre;
	
	@NotBlank(message="Por favor proporciona tu apellido.")
	@Size(min=2, max=100, message="El apellido debe tener al menos 2 caracteres.")
	private String apellido;
	
	@NotBlank(message="Por favor ingresa un correo valido")
	@Size(min=2, max=100, message="El email debe tener al menos 2 caracteres.")
	@Email(message="Ingresa un email valido.")
	private String email;
	
	@NotBlank(message="Ingresa tu password.")
	@Size(min=8, message="El password debe tener al menos 8 caracteres.")
	@Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}$", message = "El password necesita incluir al menos una letra mayúscula, una letra minúscula y un número")
	private String password;
	
	//Agregar en JSP SELECT DATE
	private LocalDate cumpleanios;
	
	@Transient
	private String confirmacion;
	
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(name="donadores",
			   joinColumns= @JoinColumn(name="usuario_id"),
			   inverseJoinColumns= @JoinColumn(name="proyecto_id"))
	private List<Proyecto> donaciones;

	@NotBlank(message="Por favor ingresa tu pais")
	private String pais;
	
	//Tiene que ser una opción en el front end de select
	private String genero;
	
	@NotBlank(message = "El número de celular es obligatorio")
    @Size(min = 10, max = 15, message = "El número debe tener entre 10 y 15 dígitos")
    @Pattern(regexp = "^\\+?[0-9]{10,15}$", message = "El número debe iniciar con '+' opcional y contener entre 10 y 15 dígitos")
	private String telefono;
	
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	@OneToMany(mappedBy="usuario", fetch=FetchType.LAZY)
	private List<Donacion> misDonaciones; //Los comentarios que ese usuario hizo


	//CONSTRUCTOR VACIO
	public Usuario() {}
	
	// GETTERS Y SETTERS 		
	
	public LocalDate getCumpleanios() {
		return cumpleanios;
	}



	public void setCumpleanios(LocalDate cumpleanios) {
		this.cumpleanios = cumpleanios;
	}



	public List<Proyecto> getDonaciones() {
		return donaciones;
	}



	public void setDonaciones(List<Proyecto> donaciones) {
		this.donaciones = donaciones;
	}



	public String getPais() {
		return pais;
	}



	public void setPais(String pais) {
		this.pais = pais;
	}



	public String getGenero() {
		return genero;
	}



	public void setGenero(String genero) {
		this.genero = genero;
	}



	public String getTelefono() {
		return telefono;
	}



	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmacion() {
		return confirmacion;
	}

	public void setConfirmacion(String confirmacion) {
		this.confirmacion = confirmacion;
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

	public List<Donacion> getMisDonaciones() {
		return misDonaciones;
	}

	public void setMisDonaciones(List<Donacion> misDonaciones) {
		this.misDonaciones = misDonaciones;
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
