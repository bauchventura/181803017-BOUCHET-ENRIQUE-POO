<%-- 
    Document   : index
    Created on : 4 jun 2020, 15:36:36
    Author     : Bauch
--%>

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
    String bla = "FFFFFF";
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#273734">
        <h1><font color="6FFADB">CRUD Cigarros</font></h1>
        <table class="egt">
            <tr>
                <th><font color="3DFCB9">ID_Cigarro</font></th>
                <th><font color="3DFCB9">Marca</font></th>
                <th><font color="3DFCB9">Filtro</font></th>
                <th><font color="3DFCB9">Precio</font></th>
                <th><font color="3DFCB9">Cantidad</font></th>
            </tr>
        <%try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/cigarros", "root", "");
                rs = conexion.createStatement().executeQuery("SELECT cigarro.id_cigarros,marcas.nombre,filtros.nombre,cigarro.precio,cigarro.cantidad FROM cigarro,filtros,marcas WHERE cigarro.id_marca=marcas.id_marca AND cigarro.id_filtro=filtros.id_filtro");
                while (rs.next()) {
                    %><tr><%
                    out.println("<td><font color="+bla+">"+rs.getString(1)+"</font></td>");
                    out.println("<td><font color="+bla+">"+rs.getString(2)+"</font></td>");
                    out.println("<td><font color="+bla+">"+rs.getString(3)+"</font></td>");
                    out.println("<td><font color="+bla+">"+rs.getString(4)+"</font></td>");
                    out.println("<td><font color="+bla+">"+rs.getString(5)+"</font></td>");
                    %></tr><%
                }%>
        </table><br>
        <table>
            <th><font color="3DFCB9">ID_Marca</font></th>
            <th><font color="3DFCB9">nombre</font></th>
            <%rs = conexion.createStatement().executeQuery("SELECT * FROM marcas");
                while (rs.next()) {
                    %><tr><%
                    out.println("<td><font color="+bla+">"+rs.getString(1)+"</font></td>");
                    out.println("<td><font color="+bla+">"+rs.getString(2)+"</font></td>");
                    %></tr><%
                }%>
        </table><br>
        <table>
            <th><font color="3DFCB9">ID_Filtro</font></th>
            <th><font color="3DFCB9">nombre</font></th>
            <%rs = conexion.createStatement().executeQuery("SELECT * FROM filtros");
                while (rs.next()) {
                    %><tr><%
                    out.println("<td><font color="+bla+">"+rs.getString(1)+"</font></td>");
                    out.println("<td><font color="+bla+">"+rs.getString(2)+"</font></td>");
                    %></tr><%
                }%>
        </table>
        <%
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }%>
    </body>
</html>
