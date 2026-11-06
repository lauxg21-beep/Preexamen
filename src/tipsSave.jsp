<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardando Tip...</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container" style="margin-top: 50px;">
            <%
                String nom = request.getParameter("nombre");
                String fec = request.getParameter("fecha");
                String desc = request.getParameter("descripcion");
                
                try {
                    String sql = "INSERT INTO tip_ia (nombre, fecha_publicacion, descripcion_tip) VALUES (?, ?, ?)";
                    st = conexion.prepareStatement(sql);
                    st.setString(1, nom);
                    st.setString(2, fec);
                    st.setString(3, desc);
                    
                    int filas = st.executeUpdate();
                    
                    if(filas > 0) {
                        out.print("<div class='alert alert-success text-center'><h3>¡Tip registrado con éxito!</h3><br><a href='formTip.jsp' class='btn btn-success'>Registrar otro</a> | <a href='catalogoTips.jsp' class='btn btn-info'>Ver catálogo</a></div>");
                    } else {
                        out.print("<div class='alert alert-danger text-center'>No se pudo registrar el tip.</div>");
                    }
                } catch(Exception e) {
                    out.print("<div class='alert alert-danger'>Error en la inserción: " + e.getMessage() + "</div>");
                }
            %>
        </div>
    </body>
</html>