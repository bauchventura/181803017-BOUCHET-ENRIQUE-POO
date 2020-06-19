<%-- 
    Document   : formularioPassword
    Created on : 19 jun 2020, 9:37:54
    Author     : Bauch
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String titule="Formulario Password",usuario="",ref="editarPassword.jsp";
int aux=0,id=0;
if(request.getParameter("id")!=null){
    titule="Editar Password";
    id=Integer.parseInt(request.getParameter("id"));
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
        //out.println("<font color=6FFADB>"+rs.getString("name")+"</font>");
    }catch(Exception e){
        out.println("Error: "+e.getMessage());
    }
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Password</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB"><% out.print(titule); %></font></h1>
        <div class="container">
            <form action="editarPassword.jsp" method="GET">
                <div class="text-center">
                    <input type="password" class="form-control" placeholder="Last Password" name="last_pass" id="last_pass" requered /><br>
                </div>
                <div class="text-center">
                    <input type="password" class="form-control" placeholder="New Password" name="pass" id="pass" requered/><br>
                </div>
                <div class="text-center">
                    <input type="password" class="form-control" placeholder="Confirmation" name="pass2" id="pass2" requered/><br>
                </div>
                <input type="submit" class="btn btn-info btn-block" value="Validar"><br>
                <input type="hidden" value="<%out.print(request.getParameter("id"));%>" name="id" id="id">
            </form>
        </div>
    </body>
</html>
