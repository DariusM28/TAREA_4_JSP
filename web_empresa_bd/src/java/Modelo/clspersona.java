
package Modelo;


abstract class clspersona {
    
    private int id;
    private String nombres, apellidos, direccion, telefono, fecha_nac;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(String fecha_nac) {
        this.fecha_nac = fecha_nac;
    }
 
    // contructores

    public clspersona(int id, String nombres, String apellidos, String direccion, String telefono, String fecha_nac) {
        this.id = id;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.telefono = telefono;
        this.fecha_nac = fecha_nac;
    }
    public clspersona(){}
    // metodos 
    public void agregar(){}
    public void modificar(){}
    public void eliminar(){}
    public void mostrar(){}
    
}
