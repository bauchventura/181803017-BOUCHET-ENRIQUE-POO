<%-- 
    Document   : insertarMarca
    Created on : 3 jul 2020, 8:00:53
    Author     : Bauch
--%>
<%@page import="Data.*"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String title = "Editar Marca";
    MarcasDB marca = new MarcasDB();
    int aux = 0;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Marca</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB">Agregar Usuario</font></h1>
            <%aux = marca.insertarMarca(new Marcas(request.getParameter("name")));
            if (aux == 1) {%>
        <div class="alert alert-success" role="alert">
            Se ha insertado correctamente en la Base de Datos
        </div>
        <%}
        if (aux == 0) {%>
        <div class="alert alert-danger" role="alert">
            Error al insertarlo en la Base de Datos
        </div>
        <%}%>
        <h2><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></h2>
    </body>
</html>

