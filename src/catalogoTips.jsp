<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catálogo Oficial - KUMON IA</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body style="background: #f4f7f6;">
        
        <div class="container" style="margin-top: 40px;">
            <center>
                <h3 style="color: #302b63; font-weight: bold;">Catálogo de tips: IA Generativa</h3>
                <p>Centro de Educación Continua KUMON</p>
                <br>
                <a href="index.html" class="btn btn-success" style="margin-bottom: 20px;"> Agregar Nuevo Tip</a>
            </center>  
            
            <%@include file="conexion.jsp"%>
           
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <table class="table table-striped table-bordered table-hover" style="text-align: center; background: white;">
                        <thead>
                            <tr style="background: #302b63; color: white;">
                                <th style="text-align: center">ID</th>
                                <th style="text-align: center">Nombre del Tip</th>
                                <th style="text-align: center">Fecha Publicación</th>
                                <th style="text-align: center">Descripción</th>
                                <th style="text-align: center">Operaciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                              try {
                                  st = conexion.prepareStatement("SELECT * FROM tip_ia");
                                  rs = st.executeQuery();
                                  while(rs.next()){
                            %>  
                            <tr>
                                <td><%=rs.getString("id_tip")%></td>
                                <td><b><%=rs.getString("nombre")%></b></td>
                                <td><%=rs.getString("fecha_publicacion")%></td>
                                <td style="text-align: left;"><%=rs.getString("descripcion_tip")%></td>
                                <td>
                                    <a class="btn btn-danger btn-sm" href="eliminarTip.jsp?id=<%=rs.getString("id_tip")%>">Eliminar</a>
                                </td>
                            </tr>
                            <%
                                  }
                              } catch(Exception e) {
                                  out.print("<tr><td colspan='5' class='text-danger'>Error al cargar datos: " + e.getMessage() + "</td></tr>");
                              }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>