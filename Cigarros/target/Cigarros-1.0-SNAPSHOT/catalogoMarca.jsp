<%-- 
    Document   : indexMarca
    Created on : 6 jul 2020, 9:19:46
    Author     : Bauch
--%>

<%@page import="Data.*"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%MarcasDB marca = new MarcasDB();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Marcas</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background: #191927">
        <h1 class="text-center p-3 mb-2 text-white" style="background: #191927"><font color="FFFFFF">Marcas</font></h1>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block sidebar border-right" style="background: #191927">
                    <div class="sidebar-sticky">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="index.jsp"><font color="FFFFFF">Cigarros</font></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="catalogoFiltro.jsp"><font color="FFFFFF">Filtros</font></a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                    <div class="chartjs-size-monitor">
                        <table class="table table-hover table-dark text-center" style="background: #222230">
                            <thead>
                                <tr>
                                    <th scope="col" class="text-center"><font color="">ID_Marca</font></th>
                                    <th scope="col" class="text-center"><font color="">Nombre</font></th>
                                    <th colspan="1" scope="col"><a class="btn btn-outline-success btn-block" href="formularioMarcas.jsp">Añadir Filtro</a></th>
                                </tr>
                            </thead>
                            <%for (int i = 0; i < marca.listadoMarcas().size(); i++) {%>
                            <tr>
                                <th scope="row"><font color=""><%out.print(marca.listadoMarcas().get(i).getID());%></font></th>
                                <td><font color=""><%out.print(marca.listadoMarcas().get(i).getNombre());%></font></td>
                                <td><a class="btn btn-outline-danger btn-block" href="eliminarMarca.jsp?id=<%out.print(marca.listadoMarcas().get(i).getID());%>">Eliminar</a></td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>
