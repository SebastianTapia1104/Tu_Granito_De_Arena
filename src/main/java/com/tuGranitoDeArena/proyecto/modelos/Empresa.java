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
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

	@Entity
	@Table(name="empresas")
	public class Empresa {

		@Id
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
		private Long id;
		
		@NotBlank(message="Por favor ingresa el nombre/razón social de tu empresa.")
		@Size(min=2, max=100, message="El nombre tu empresa debe tener al menos 2 caracteres.")
		private String nombreEmpresa;
		
		@NotBlank(message="Por favor ingresa el nombre/razón social de tu empresa.")
		@Size(min=2, max=100, message="La razón social de tu empresa debe tener al menos 2 caracteres.")
		private String RazonSocial;
		
		@NotBlank(message="Por favor ingresa un rut de empresa válido.")
		@Size(min=8, max=100, message="El rut debe tener al menos 8 caracteres.")
		private String rutEmpresa;
		
		@NotBlank(message = "El número de celular es obligatorio")
	    @Size(min = 10, max = 15, message = "El número debe tener entre 10 y 15 dígitos")
	    @Pattern(regexp = "^\\+?[0-9]{10,15}$", message = "El número debe iniciar con '+' opcional y contener entre 10 y 15 dígitos")
		private String telefonoEmpresa;
		
		@NotBlank(message="Por favor ingresa un correo valido")
		@Size(min=2, max=100, message="El email debe tener al menos 2 caracteres.")
		@Email(message="Ingresa un email valido.")
		private String emailEmpresa;
		
		@NotBlank(message="Ingresa sitio web")
		private Boolean sitioWeb;
		
		@NotBlank(message="Ingresa una dirección.")
		@Size(min=8, max=100, message="La dirección debe tener al menos 8 caracteres.")
		private String direccionEmpresa;
		
		@NotBlank(message="")
		@Min(value = 1, message = "Debes tener al menos 1 sucursal para registrarte.")
		private int sucursales;
		
		@NotBlank(message="Ingresa tu password.")
		@Size(min=8, message="El password debe tener al menos 8 caracteres.")
		@Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}$", message = "El password necesita incluir al menos una letra mayúscula, una letra minúscula y un número")
		private String password;
		
		@Transient
		private String confirmacion;
		
		
		//DATOS DE CONTACTO EMPRESA
		
		@NotBlank(message="Por favor ingresa tu nombre")
		@Size(min=2, max=100, message="El nombre debe tener al menos 2 caracteres.")
		private String nombreContacto;
		
		@NotBlank(message="Por favor ingresa tu apellido")
		@Size(min=2, max=100, message="El apellido debe tener al menos 2 caracteres.")
		private String apellidoContacto;
		
		@NotBlank(message = "El RUT no puede estar vacío")
	    @Size(min = 8, max = 9, message = "El RUT debe tener entre 8 y 9 caracteres")
	    @Pattern(regexp = "^[0-9]{7,8}[0-9Kk]$", message = "El RUT debe ser un número sin puntos ni guion, terminando en un dígito o 'K'")
		private String rutContacto;
		
		//Agregar en JSP SELECT DATE
		private LocalDate fechaNacimiento;
		
		//Tiene que ser una opción en el front end de select
		private String generoContacto;
		
		@NotBlank(message="Por favor ingresa un correo valido")
		@Size(min=2, max=100, message="El email debe tener al menos 2 caracteres.")
		@Email(message="Ingresa un email valido.")
		private String emailContacto;
		
		@Pattern(regexp = "^[+]?[0-9\\- ]{8,15}$", message = "Número de teléfono inválido")
		@Size(min = 8, max = 15, message = "El número de teléfono debe tener entre 8 y 15 caracteres")
		private String telefonoContacto;

		@NotBlank(message="Por favor ingrese un país.")
		private String pais;
		
		//DEBEN HACERSE EN EL FRONT-END CON SELECT
		
		private Boolean terminosYCondicones;
		
		private String regionEmpresa;
		
		private String comunaEmpresa;
							
		
		//RELACIONES
		
		@OneToMany(mappedBy="creador", fetch=FetchType.LAZY)
		private List<Proyecto> proyectosCreados;

		
		@Column(updatable=false)
		@DateTimeFormat(pattern="yyyy-MM-dd")
		private Date createdAt;
		
		@DateTimeFormat(pattern="yyyy-MM-dd")
		private Date updatedAt;
		
		
		//CONSTRUCTOR VACIO
		public Empresa() {}
		
		
		//GETTERS Y SETTERS
		
		
		
		public Long getId() {
			return id;
		}




		public String getNombreEmpresa() {
			return nombreEmpresa;
		}


		public void setNombreEmpresa(String nombreEmpresa) {
			this.nombreEmpresa = nombreEmpresa;
		}


		public String getRazonSocial() {
			return RazonSocial;
		}


		public void setRazonSocial(String razonSocial) {
			RazonSocial = razonSocial;
		}


		public String getTelefonoEmpresa() {
			return telefonoEmpresa;
		}


		public void setTelefonoEmpresa(String telefonoEmpresa) {
			this.telefonoEmpresa = telefonoEmpresa;
		}


		public String getPais() {
			return pais;
		}


		public void setPais(String pais) {
			this.pais = pais;
		}


		public void setId(Long id) {
			this.id = id;
		}


		public String getRutEmpresa() {
			return rutEmpresa;
		}




		public void setRutEmpresa(String rutEmpresa) {
			this.rutEmpresa = rutEmpresa;
		}




		public int getSucursales() {
			return sucursales;
		}




		public void setSucursales(int sucursales) {
			this.sucursales = sucursales;
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




		public String getNombreContacto() {
			return nombreContacto;
		}




		public void setNombreContacto(String nombreContacto) {
			this.nombreContacto = nombreContacto;
		}




		public String getApellidoContacto() {
			return apellidoContacto;
		}




		public void setApellidoContacto(String apellidoContacto) {
			this.apellidoContacto = apellidoContacto;
		}




		public String getRutContacto() {
			return rutContacto;
		}




		public void setRutContacto(String rutContacto) {
			this.rutContacto = rutContacto;
		}




		public String getEmailContacto() {
			return emailContacto;
		}




		public void setEmailContacto(String emailContacto) {
			this.emailContacto = emailContacto;
		}




		public String getTelefonoContacto() {
			return telefonoContacto;
		}




		public void setTelefonoContacto(String telefonoContacto) {
			this.telefonoContacto = telefonoContacto;
		}




		public String getDireccionEmpresa() {
			return direccionEmpresa;
		}




		public void setDireccionEmpresa(String direccionEmpresa) {
			this.direccionEmpresa = direccionEmpresa;
		}




		public String getRegionEmpresa() {
			return regionEmpresa;
		}




		public void setRegionEmpresa(String regionEmpresa) {
			this.regionEmpresa = regionEmpresa;
		}




		public String getComunaEmpresa() {
			return comunaEmpresa;
		}




		public void setComunaEmpresa(String comunaEmpresa) {
			this.comunaEmpresa = comunaEmpresa;
		}


		public List<Proyecto> getProyectosCreados() {
			return proyectosCreados;
		}




		public void setProyectosCreados(List<Proyecto> proyectosCreados) {
			this.proyectosCreados = proyectosCreados;
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




		@PrePersist //ANTES de crear al usuario 
		protected void onCreate() {
			this.createdAt = new Date(); //DEFAULT CURRENT_TIMESTAMP
		}
		
		@PreUpdate //ANTES de actualizar
		protected void onUpdate() {
			this.updatedAt = new Date(); //DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT TIME_STAMP
		}

	}

