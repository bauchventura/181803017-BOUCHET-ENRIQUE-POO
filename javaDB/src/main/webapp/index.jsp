<%-- 
    Document   : index
    Created on : 29 may 2020, 9:01:26
    Author     : Bauch
--%>

<%@page import="com.mysql.cj.jdbc.exceptions.CommunicationsException"%>
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
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/cigarros","root","");
        rs = conexion.createStatement().executeQuery("Select * from precio");
        while(rs.next()){
            out.println(rs.getString(1));
        }
    }catch(SQLException e){
        switch(e.getErrorCode()){
            case 0:{
                out.println("ErrorSQL:  No Activaste el Xampp");
                break;
            }
            case 1049:{
                out.println("ErrorSQL:  No Existe la Base de Datos");
                break;
            }
            case 1146 :{
                out.println("ErrorSQL: No Existe esa Tabla");
                break;
            }
            case 1045:{
                out.println("ErrorSQL: Acceso denegado al LocalHost");
                break;
            }
            case 1054:{
                out.println("ErrorSQL: No Existe el Atríbuto");
                break;
            }
            default:{
                out.println("ErrorSQL: "+e.getMessage()+" : "+e.getErrorCode());
                break;
            }
        }
    }catch(Exception e){
        out.println("Error: "+e+"<br>");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
