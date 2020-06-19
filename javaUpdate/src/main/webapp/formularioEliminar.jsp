<%-- 
    Document   : formularioEliminar
    Created on : 19 jun 2020, 13:55:23
    Author     : Bauch
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String titule="Formulario Eliminar",usuario="";
if(request.getParameter("id")!=null){
    titule="Eliminar";
    int id=Integer.parseInt(request.getParameter("id"));
    Connection conexion = null;
    ResultSet rs = null;
    PreparedStatement stmt = null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/cigarros", "root", "");
        stmt = conexion.prepareStatement("SELECT * FROM usuarios WHERE id_user=?");
        stmt.setInt(1,id);
        rs = stmt.executeQuery();
        rs.next();
        usuario=rs.getString("name");
        out.println("<font color=6FFADB>"+rs.getString("name")+"</font>");
    }catch(Exception e){
        out.println("Error: "+e.getMessage());
    }
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Eliminar</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB"><% out.print(titule); %></font></h1>
        <div class="container">
            <form action="eliminar.jsp" method="GET">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Name" name="name" id="name" requered /><br>
                </div>
                <div class="col">
                    <a class="btn btn-primary btn-block" href="index.jsp">Cancelar</a>
                    <input type="submit" class="btn btn-danger btn-block" value="Eliminar"><br>
                    <input type="hidden" value="<%out.print(request.getParameter("id"));%>" name="id" id="id">
                    <input type="hidden" value="<%out.print(usuario);%>" name="user" id="user">
                </div>
            </form>
        </div>
    </body>
</html>
