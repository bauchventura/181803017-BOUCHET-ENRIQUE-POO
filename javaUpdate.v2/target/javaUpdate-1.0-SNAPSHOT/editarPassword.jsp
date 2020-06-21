<%-- 
    Document   : editarPassword
    Created on : 19 jun 2020, 9:43:50
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
        <title>Edita Password</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB">Editar Password</font></h1>
            <%if (request.getParameter("pass").equals(request.getParameter("pass2")) == true) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conexion = DriverManager.getConnection("jdbc:mysql://localhost/cigarros", "root", "");
                        stmt = conexion.prepareStatement("UPDATE `usuarios` SET `password`=MD5(?) WHERE `id_user`=? AND `password`=MD5(?)");
                        //out.print("<font color=FFFFFF>"+request.getParameter("user")+"</font><br>");
                        //out.print("<font color=FFFFFF>"+request.getParameter("id")+"</font>");
                        stmt.setString(1, request.getParameter("pass"));
                        stmt.setInt(2, Integer.parseInt(request.getParameter("id")));
                        stmt.setString(3, request.getParameter("last_pass"));
                        aux = stmt.executeUpdate();
                    } catch (Exception e) {
                        out.println("<font color=FFFFFF>Error: " + e.getMessage() + "</font>");
                }
                if (aux == 1) {%>
        <h2 class="text-center"><font color="6FFADB">Se ha modíficado correctamente en la Base de Datos</font></h2>
            <%}
            if (aux == 0) {%>
        <h2 class="text-center"><font color="6FFADB">Error al modificar en la Base de Datos</font></h2>
        <%}%><h2><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></h2><%
        } else {%>            
        <div class="col">
            <h3 class="text-center"><font color="6FFADB">Las contraseñas no son correctas</font></h3>
            <a class="btn btn-primary btn-block" href="formularioPassword.jsp">Regresar</a>
        </div>
        <%}
        %>
    </body>
</html>
