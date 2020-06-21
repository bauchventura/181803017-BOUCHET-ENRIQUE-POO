<%-- 
    Document   : agrearUsuario
    Created on : 12 jun 2020, 9:24:52
    Author     : Bauch
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLSyntaxErrorException"%>
<%@page import="com.mysql.cj.xdevapi.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    ResultSet rs = null;
    PreparedStatement stmt = null;
    int aux=0;
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Usuarios</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB">Agregar Usuario</font></h1>
        <%
    try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/cigarros", "root", "");
            stmt = conexion.prepareStatement("INSERT INTO `usuarios` (`id_user`, `name`, `password`) VALUES (NULL, ?, MD5(?))");
            stmt.setString(1, request.getParameter("user"));
            stmt.setString(2, request.getParameter("pass"));
            aux = stmt.executeUpdate();
        }catch (Exception e) {
            out.println("<font color=FFFFFF>Error: "+e.getMessage()+"</font>");
        }
            if (aux == 1) {%>
                <h2 class="text-center"><font color="6FFADB">Se ha insertado correctamente en la Base de Datos</font></h2>
        <%}
            if (aux == 0) {%>
                <h2 class="text-center"><font color="6FFADB">Error al insertarlo en la Base de Datos</font></h2>
        <%}
        %>
    <h2><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></h2>
    </body>
</html>

