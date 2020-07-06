<%-- 
    Document   : index
    Created on : 4 jun 2020, 15:36:36
    Author     : Bauch
--%>

<%@page import="Data.*"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%CigarroDB cigarro = new CigarroDB();
    FiltrosDB filtro = new FiltrosDB();
    MarcasDB marca = new MarcasDB(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Cigarros</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background: #191927">
        <h1 class="text-center"><font color="FFFFFF">Cigarros</font></h1>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block sidebar border-right" style="background: #191927">
                    <div class="sidebar-sticky">
                        <ul class="nav flex-column sidebar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="catalogoFiltro.jsp"><font color="FFFFFF">Filtros</font></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="catalogoMarca.jsp"><font color="FFFFFF">Marcas</font></a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                    <div class="chartjs-size-monitor">
                        <table class="table table-hover table-dark text-center" style="background: #222230">
                            <thead>
                                <tr>
                                    <th scope="col" class="text-center"><font color="">ID_Cigarro</font></th>
                                    <th scope="col" class="text-center"><font color="">Filtro</font></th>
                                    <th scope="col" class="text-center"><font color="">Marca</font></th>
                                    <th scope="col" class="text-center"><font color="">Precio</font></th>
                                    <th scope="col" class="text-center"><font color="">Cantidad</font></th>
                                    <th colspan="2" scope="col"><a class="btn btn-outline-success btn-block" href="formularioCigarros.jsp">Añadir Cigarro</a></th>
                                </tr>
                            </thead>
                            <%for (int i = 0; i < cigarro.listadoCigarros().size(); i++) {%>
                            <tr>
                                <th scope="row"><font color=""><%out.print(cigarro.listadoCigarros().get(i).getID_Cigarro());%></font></th>
                                    <%for (int j = 0; j < filtro.listadoFiltros().size(); j++) {
                                            if (cigarro.listadoCigarros().get(i).getID_Filtro() == filtro.listadoFiltros().get(j).getID()) {%>
                                <td><font color=""><%out.print(filtro.listadoFiltros().get(j).getNombre());%></font></td>
                                    <%}
                                        }
                                        for (int j = 0; j < marca.listadoMarcas().size(); j++) {
                                            if (cigarro.listadoCigarros().get(i).getID_Marca() == marca.listadoMarcas().get(j).getID()) {%>
                                <td><font color=""><%out.print(marca.listadoMarcas().get(j).getNombre());%></font></td>
                                    <%}
                                        }%>
                                <td><font color="">$<%out.print(cigarro.listadoCigarros().get(i).getPrecio());%></font></td>
                                <td><font color=""><%out.print(cigarro.listadoCigarros().get(i).getCantidad());%></font></td>
                                <td><a class="btn btn-outline-warning btn-block" href="formularioCigarros.jsp?id=<%out.print(cigarro.listadoCigarros().get(i).getID_Cigarro());%>">Editar</a></td>
                                <td><a class="btn btn-outline-danger btn-block" href="eliminarCigarro.jsp?id=<%out.print(cigarro.listadoCigarros().get(i).getID_Cigarro());%>">Eliminar</a></td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>
