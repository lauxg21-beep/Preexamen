<%@page import="java.sql.*"%>
<%
    Connection conexion = null;
    PreparedStatement st = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        
       
        conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdpreexamen?useSSL=false&serverTimezone=UTC", "root", "");
        
        out.print("<div class='alert alert-success text-center'><h3>conexion exitosa</h3></div>");
        
    } catch (Exception e) {
        out.print("<div class='alert alert-danger'>Error de SQL / Conexión -> " + e.getMessage() + "</div>");
    }
%>