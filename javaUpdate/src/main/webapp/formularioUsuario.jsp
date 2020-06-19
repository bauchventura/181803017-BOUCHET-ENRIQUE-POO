<%-- 
    Document   : formularioUsuario
    Created on : 12 jun 2020, 8:49:05
    Author     : Bauch
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String titule="Formulario Usuario",usuario="",ref="agrearUsuario.jsp";
if(request.getParameter("id")!=null){
    titule="Editar Usuario";
    ref="editarUsuario.jsp";
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
        //out.println("<font color=6FFADB>"+rs.getString("name")+"</font>");
    }catch(Exception e){
        out.println("Error: "+e.getMessage());
    }
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><% out.print(titule); %></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB"><% out.print(titule); %></font></h1>
        <div class="container">
            <form action=<%out.print(ref);%> method="POST"/>
            <div class="form-row">
                <div class="col">
                    <input type="text" value="<%out.print(usuario);%>" class="form-control" placeholder="Nombre" name="user" id="user" requered />
                </div>
                <%if(request.getParameter("id")==null){
                    %><div class="col">
                    <input type="password" class="form-control" placeholder="Contraseña" name="pass" id="pass" requered/>
                </div>
                <div class="col">
                    <input type="submit" class="btn btn-success btn-block" value="Sent"/>
                </div><%
                }else{
                    %><div class="col">
                        <input type="submit" class="btn btn-warning btn-block" value="Sent"/>
                        <input type="hidden" value="<%out.print(request.getParameter("id"));%>" name="id" id="id">
                </div><%
                }%>
            </div>   
            </form>
        </div>
    </body>
</html>
