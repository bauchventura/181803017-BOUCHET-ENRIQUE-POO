<%-- 
    Document   : eliminar
    Created on : 19 jun 2020, 13:55:58
    Author     : Bauch
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection conexion = null;
    ResultSet rs = null;
    PreparedStatement stmt = null;
    int aux=0;
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Registro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB">Eliminar Registro</font></h1>
        <%if (request.getParameter("name").equals(request.getParameter("user")) == true) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conexion = DriverManager.getConnection("jdbc:mysql://localhost/cigarros", "root", "");
                        stmt = conexion.prepareStatement("DELETE FROM `usuarios` WHERE `id_user`=?");
                        //out.print("<font color=FFFFFF>"+request.getParameter("user")+"</font><br>");
                        //out.print("<font color=FFFFFF>"+request.getParameter("id")+"</font>");
                        stmt.setInt(1, Integer.parseInt(request.getParameter("id")));
                        aux = stmt.executeUpdate();
                    } catch (Exception e) {
                        out.println("<font color=FFFFFF>Error: " + e.getMessage() + "</font>");
                }
                if (aux == 1) {%>
        <h2 class="text-center"><font color="6FFADB">Se ha eliminado correctamente en la Base de Datos</font></h2>
            <%}
            if (aux == 0) {%>
        <h2 class="text-center"><font color="6FFADB">Error al eliminar en la Base de Datos</font></h2>
        <%}%><h2><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></h2><%
        } else {%>            
        <div class="col">
            <h3 class="text-center"><font color="6FFADB">El nombre no es correcto</font></h3>
            <a class="btn btn-primary btn-block" href="formularioEliminar.jsp">Regresar</a>
        </div>
        <%}
        %>
    </body>
</html>