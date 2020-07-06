<%-- 
    Document   : eliminarCigarro
    Created on : 3 jul 2020, 9:56:45
    Author     : Bauch
--%>
<%@page import="Data.*"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String title = "Eliminar Cigarro";
    CigarroDB cigarro = new CigarroDB();
    int aux = 0; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%out.print(title);%></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB"><%out.print(title);%></font></h1>
            <%for (int i = 0; i < cigarro.listadoCigarros().size(); i++) {
                    if (cigarro.listadoCigarros().get(i).getID_Cigarro() == Integer.parseInt(request.getParameter("id"))) {
                        aux = cigarro.eliminarCigarro(cigarro.listadoCigarros().get(i));
                    }
                }
                if (aux == 1) {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                if (aux == 0) {%>
        <div class="alert alert-danger" role="alert">
            Error al eliminar en la Base de Datos
        </div>
        <h2><a class="btn btn-primary btn-block" href="index.jsp">Regresar</a></h2>
        <%}%>
    </body>
</html>