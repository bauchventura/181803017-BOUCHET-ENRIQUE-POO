<%-- 
    Document   : editarMarca
    Created on : 3 jul 2020, 8:06:17
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
        <title>Editar Filtro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB"><%out.print(title);%></font></h1>
            <%for (int i = 0; i < marca.listadoMarcas().size(); i++) {
                    if (marca.listadoMarcas().get(i).getID() == Integer.parseInt(request.getParameter("id"))) {
                        aux = marca.modificarMarca(marca.listadoMarcas().get(i), request.getParameter("name"));
                    }
        }
        if (aux == 1) {%>
        <div class="alert alert-success" role="alert">
            Se ha modíficado correctamente en la Base de Datos
        </div>
        <%}
        if (aux == 0) {%>
        <div class="alert alert-warning" role="alert">
            Error al modificar en la Base de Datos
        </div>
        <%}%>
        <h2><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></h2>
    </body>
</html>

