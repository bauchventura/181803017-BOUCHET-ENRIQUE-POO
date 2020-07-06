<%-- 
    Document   : formularioCigarros
    Created on : 3 jul 2020, 8:17:43
    Author     : Bauch
--%>
<%@page import="Data.*"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String title = "Editar Cigarro", ref = "editaCigarro.jsp";
    int aux = 0;
    if (request.getParameter("id") == null) {
        title = "Insetar Cigarro";
        ref = "insertarCigarro.jsp";
    }
    MarcasDB marca = new MarcasDB();
    FiltrosDB filtro = new FiltrosDB();
    CigarroDB cigarro = new CigarroDB();
    if (request.getParameter("id") != null) {
        for (int i = 0; i < cigarro.listadoCigarros().size(); i++) {
            if (cigarro.listadoCigarros().get(i).getID_Cigarro() == Integer.parseInt(request.getParameter("id"))) {
                aux = i;
            }
        }
    }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%out.print(title);%></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB"><%out.print(title);%></font></h1>
        <div class="container">
            <form action="<%out.print(ref);%>" method="GET">
                <%if (request.getParameter("id") == null) {%>
                <div class="form-row">
                    <div class="col">
                        <font color="FFFFFF">Seleccione un Filtro del Catálogo</font><br>
                        <select name="filtro" class="form-control" id="filtro">
                            <%for (int i = 0; i < filtro.listadoFiltros().size(); i++) {%>
                            <option value="<%out.print(filtro.listadoFiltros().get(i).getID());%>"><%out.print(filtro.listadoFiltros().get(i).getNombre());%></option>
                            <%}%> 
                        </select>
                    </div>
                    <div class="col">
                        <font color="FFFFFF">Seleccione una Marca del Catálogo</font><br>
                        <select name="marca" class="form-control" id="marca" required>
                            <%for (int i = 0; i < marca.listadoMarcas().size(); i++) {%>
                            <option value="<%out.print(marca.listadoMarcas().get(i).getID());%>"><%out.print(marca.listadoMarcas().get(i).getNombre());%></option>
                            <%}%> 
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col">
                        <font color="FFFFFF">Digite un Precio</font><br>
                        <input type="numeric" class="form-control" placeholder="Precio" name="precio" id="precio" required>
                    </div>
                    <div class="col">
                        <font color="FFFFFF">Digite una Cantidad</font><br>
                        <input type="number" class="form-control" placeholder="Cantidad" name="cantidad" id="cantidad" required>
                    </div>
                </div>
                <%} else if (request.getParameter("id") != null) {%>
                <div class="form-row">
                    <div class="col">
                        <font color="FFFFFF">Seleccione un Filtro del Catálogo</font><br>
                        <select name="filtro" class="form-control" id="filtro">
                            <%for (int j = 0; j < filtro.listadoFiltros().size(); j++) {
                                    if (filtro.listadoFiltros().get(j).getID() == cigarro.listadoCigarros().get(aux).getID_Filtro()) {%>
                            <option value="<%out.print(filtro.listadoFiltros().get(j).getID());%>" selected><%out.print(filtro.listadoFiltros().get(j).getNombre());%></option>
                            <%}%>
                            <option value="<%out.print(filtro.listadoFiltros().get(j).getID());%>"><%out.print(filtro.listadoFiltros().get(j).getNombre());%></option>
                            <%}%> 
                        </select>
                    </div>
                    <div class="col">
                        <font color="FFFFFF">Seleccione una Marca del Catálogo</font><br>
                        <select name="marca" class="form-control" id="marca" required>
                            <%for (int j = 0; j < marca.listadoMarcas().size(); j++) {
                                    if (marca.listadoMarcas().get(j).getID() == cigarro.listadoCigarros().get(aux).getID_Marca()) {%>
                            <option value="<%out.print(marca.listadoMarcas().get(j).getID());%>" selected><%out.print(marca.listadoMarcas().get(j).getNombre());%></option>
                            <%}%>
                            <option value="<%out.print(marca.listadoMarcas().get(j).getID());%>"><%out.print(marca.listadoMarcas().get(j).getNombre());%></option>
                            <%}%> 
                        </select>
                    </div> 
                </div>
                <div class="form-row">
                    <div class="col">
                        <font color="FFFFFF">Digite un Precio</font><br>
                        <input type="numeric" value="<%out.print(cigarro.listadoCigarros().get(aux).getPrecio());%>" class="form-control" placeholder="Precio" name="precio" id="precio" required>
                    </div>
                    <div class="col">
                        <font color="FFFFFF">Digite una Cantidad</font><br>
                        <input type="number" value="<%out.print(cigarro.listadoCigarros().get(aux).getCantidad());%>" class="form-control" placeholder="Cantidad" name="cantidad" id="cantidad" required>
                    </div>
                </div>
                <%}%>
                <div class="form-row">
                    <div class="container">
                        <br>
                        <input type="hidden" value="<%out.print(request.getParameter("id"));%>" name="id" id="id">
                        <input type="submit" class="btn btn-success btn-block" value="Sent"/>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
