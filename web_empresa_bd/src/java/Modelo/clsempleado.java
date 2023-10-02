
package Modelo;

import java.sql.ResultSet;
import java.util.HashMap;

public class clsempleado extends clspersona {
    private String empleado;
    private int id_puesto;
    private clsConexion cn;

    public String getEmpleado() {
        return empleado;
    }

    public void setEmpleado(String empleado) {
        this.empleado = empleado;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
    }
    // contructor

    public clsempleado(String empleado, int id_puesto, int id, String nombres, String apellidos, String direccion, String telefono, String fecha_nac) {
        super(id, nombres, apellidos, direccion, telefono, fecha_nac);
        this.empleado = empleado;
        this.id_puesto = id_puesto;
    }

    public clsempleado(String empleado, int id_puesto) {
        this.empleado = empleado;
        this.id_puesto = id_puesto;
    }
    
    public clsempleado(){}
    
    
    public HashMap drop_sangre(){
    HashMap<String,String>drop = new HashMap();
    try{
        
        cn = new clsConexion();
        cn.abrir();
        String query = "SELECT id_puesto as id,puesto FROM puestos;";
        ResultSet consulta = cn.cnn.createStatement().executeQuery(query);
        while(consulta.next()){
        drop.put(consulta.getString("id"),consulta.getString("puesto"));
        }
        cn.cerrar();
    }catch(Exception ex){
       System.out.println(ex.getMessage());
    }
    return drop ;
    }
    // metodos
    @Override
    public void agregar(){}
    @Override
    public void modificar(){}
    @Override
    public void eliminar(){}
    @Override
    public void mostrar(){}
    
    
}
