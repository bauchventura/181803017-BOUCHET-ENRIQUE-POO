<%-- 
    Document   : indexFiltro
    Created on : 6 jul 2020, 9:19:16
    Author     : Bauch
--%>

<%@page import="Data.*"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%FiltrosDB filtro = new FiltrosDB();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Filtros</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background: #191927">
        <h1 class="text-center" style="background: #191927"><font color="FFFFFF">Filtros</font></h1>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block sidebar border-right" style="background: #191927">
                    <div class="sidebar-sticky">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="index.jsp"><font color="FFFFFF">Cigarros</font></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="catalogoMarca.jsp"><font color="FFFFFF">Marcas</font></a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                    <div class="chartjs-size-monitor">
                        <table class="table  table-hover table-dark text-center" style="background: #222230">
                            <thead>
                                <tr>
                                    <th scope="col" class="text-center"><font color="">ID_Filtro</font></th>
                                    <th scope="col" class="text-center"><font color="">Nombre</font></th>
                                    <th colspan="1" scope="col"><a class="btn btn-outline-success btn-block" href="formularioFiltro.jsp">Añadir Filtro</a></th>
                                </tr>
                            </thead>
                            <%for (int i = 0; i < filtro.listadoFiltros().size(); i++) {%>
                            <tr>
                                <th scope="row" class="text-center"><font color=""><%out.print(filtro.listadoFiltros().get(i).getID());%></font></th>
                                <td><font color=""><%out.print(filtro.listadoFiltros().get(i).getNombre());%></font></td>
                                <td><a class="btn btn-outline-danger btn-block" href="eliminarFiltro.jsp?id=<%out.print(filtro.listadoFiltros().get(i).getID());%>">Eliminar</a></td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>
