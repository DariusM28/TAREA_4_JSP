<%-- 
    Document   : index
    Created on : 26/09/2023, 21:41:53
    Author     : Renato
--%>
<%@page import="Modelo.clsempleado"%>
<%@page import = "Modelo.clsempleado"   %>
<%@page import = "java.util.HashMap"   %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>empleados</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <h1>Formulario empleados</h1>
        <div class="container">
            <form action="action" method="post" class="form-group">
                <!<!-- usuario -->
                <label for = "lbl_codigo" ><b> Codigo :</label>
                <input type="text" name="txt_codigo" id ="txt_codigo" class="form-control" placeholder="condigo de empleado" required>
                <!-- nombres  -->
                <label for = "lbl_nombres" > Nombres :<b> </label>
                <input type="text" name="txt_nombres" id ="txt_nombres" class="form-control" placeholder="nombres del empleado" required>
                 <!-- apellidos  -->
                <label for = "lbl_apellidos" > Apellidos :<b> </label>
                <input type="text" name="txt_apellidos" id ="txt_apellidos" class="form-control" placeholder="apellidos del empleado" required>
                <!-- direccion -->
                <label for = "lbl_direccion" > Direccion :<b> </label>
                <input type="text" name="txt_direccion" id ="txt_direccion" class="form-control" placeholder=" calle ; zona ; numero de casa" required>
                <!-- telefono -->
                <label for = "lbl_telefono" > Telefono :<b> </label>
                <input type="number" name="txt_telefono" id ="txt_telefono" class="form-control" placeholder=" 5555-5555" required>
                <!-- fecha de nacimiento -->
                <label for = "lbl_fch_n" > Fecha de Nacimiento:<b> </label>
                <input type="date" name="txt_fch_n" id ="txt_fch_n" class="form-control"  required>
                <label for = "lbl_sangre" > Tipo de Sangre :<b> </label>
                <select name="drop_sangre"  id="drop_sangre" class="from-control">
                    <%  
                      clsempleado empl = new clsempleado(); 
                      HashMap<String,String> drop = empl.drop_sangre();
                       for (String i: drop.keySet()){
                        out.println("<option value ='" +i+ "' > " + drop.get(i)+"</option> " );
                        }
                     %>
                </select>
                </br>
                
                <button type="button" name="btn_agregar" id="btn_agregar" class="btn btn-primary">AGREGAR</button>
            </form>
        </div>
    </body>

