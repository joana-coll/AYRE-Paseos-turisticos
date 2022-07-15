package entity;

public class Paseos_Turisticos {
    private int idActividad;
    private String nombre;
    private String diaHorario;
    private String ubicacion;
    private String descripcion;
    private String valor;
    private String imagen;

//  CONSTRUCTOR CON idActividad ------------------------------------------------
    public Paseos_Turisticos(int idActividad, String nombre, String diaHorario, String ubicacion, String descripcion, String valor, String imagen) {
        this.idActividad = idActividad;
        this.nombre = nombre;
        this.diaHorario = diaHorario;
        this.ubicacion = ubicacion;
        this.descripcion = descripcion;
        this.valor = valor;
        this.imagen = imagen;
    }

//  CONSTRUCTOR SIN idActividad ------------------------------------------------
    public Paseos_Turisticos(String nombre, String diaHorario, String ubicacion, String descripcion, String valor, String imagen) {
        this.nombre = nombre;
        this.diaHorario = diaHorario;
        this.ubicacion = ubicacion;
        this.descripcion = descripcion;
        this.valor = valor;
        this.imagen = imagen;
    }
    
//  GETTER Y SETTER idActividad ------------------------------------------------
    public int getIdActividad() {
        return idActividad;
    }
    public void setIdActividad(int idActividad) {
        this.idActividad = idActividad;
    }

//  GETTER Y SETTER nombre -----------------------------------------------------
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

//  GETTER Y SETTER diaHorario -------------------------------------------------
    public String getDiaHorario() {
        return diaHorario;
    }
    public void setDiaHorario(String diaHorario) {
        this.diaHorario = diaHorario;
    }

//  GETTER Y SETTER ubicacion --------------------------------------------------
    public String getUbicacion() {
        return ubicacion;
    }
    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

//  GETTER Y SETTER descripcion ------------------------------------------------
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

//  GETTER Y SETTER valor ------------------------------------------------------
    public String getValor() {
        return valor;
    }
    public void setValor(String valor) {
        this.valor = valor;
    }

//  GETTER Y SETTER imagen ------------------------------------------------------
    public String getImagen() {
        return imagen;
    }
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
//  METODO toString ------------------------------------------------------------
    @Override
    public String toString() {
        return "Paseos_Turisticos{" + "nombre=" + nombre + ", diaHorario=" + diaHorario + ", ubicacion=" + ubicacion + ", descripcion=" + descripcion + ", valor=" + valor + '}';
    }  
}
