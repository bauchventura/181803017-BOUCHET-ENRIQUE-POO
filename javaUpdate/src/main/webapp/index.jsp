<%-- 
    Document   : index
    Created on : 29 may 2020, 9:01:26
    Author     : Bauch
--%>

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
    String bla = "FFFFFF";
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Usuarios</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB">Usuarios</font></h1>
        <div class="cointaner">
            <table class="table table-sm table-hover">
                <thead style="background-color:#28A745" >
                    <tr>
                        <th scope="col"><font color="FFFFFF">ID</font></th>
                        <th scope="col"><font color="FFFFFF">Nombre</font></th>
                        <th colspan="4" scope="col"><font color="FFFFFF">Contraseña</font></th>
                    </tr>
                </thead>
                <%try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conexion = DriverManager.getConnection("jdbc:mysql://localhost/cigarros", "root", "");
                        stmt = conexion.prepareStatement("SELECT * FROM usuarios");
                        rs = stmt.executeQuery();
                        while (rs.next()) {
                    %><tr><%
                                out.println("<th scope=row><font color=FFFFFF>" + rs.getInt("id_user") + "</font></th>");
                                out.println("<td><font color=FFFFFF>" + rs.getString("name") + "</font></td>");
                                out.println("<td><font color=FFFFFF>" + rs.getString("password") + "</font></td>");
                                %><td><a class="btn btn-info btn-block" href="formularioUsuario.jsp?id=<%out.print(rs.getInt("id_user"));%>">Editar Usuario</a></td><%
                                %><td><a class="btn btn-warning btn-block" href="formularioPassword.jsp?id=<%out.print(rs.getInt("id_user"));%>">Editar Password</a></td><%
                                %><td><a class="btn btn-danger btn-block" href="formularioEliminar.jsp?id=<%out.print(rs.getInt("id_user"));%>">Eliminar Usuario</a></td><%
                    %></tr><%
                        }%>
                <tr>
                    <td colspan="3"><h2><font color="3DFCB9">Usuarios</font></h2></td>
                    <td colspan="3"><h2><a class="btn btn-success btn-block" href="formularioUsuario.jsp">Agregar Usuarios</a></h2></td>
                </tr>
            </table>
            <%
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }%>
        </div>

    </body>
</html>
