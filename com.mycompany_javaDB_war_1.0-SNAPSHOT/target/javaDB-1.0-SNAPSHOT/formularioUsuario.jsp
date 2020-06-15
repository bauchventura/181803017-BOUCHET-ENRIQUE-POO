<%-- 
    Document   : formularioUsuario
    Created on : 12 jun 2020, 8:49:05
    Author     : Bauch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Usuario</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color:#273734">
        <h1 class="text-center"><font color="6FFADB">Agregar un Nuevo Usuario</font></h1>
        <div class="container">
            <form action="agrearUsuario.jsp" method="POST"/>
            <div class="form-row">
                <div class="col">
                    <input type="text" style="background-color:#273734" class="form-control" placeholder="Nombre" name="user" id="user" requered />
                </div>
                <div class="col">
                    <input type="password" style="background-color:#273734" class="form-control" placeholder="Contraseña" name="pass" id="pass" requered/>
                </div>
                <div class="col">
                    <input type="submit" class="btn btn-success btn-block" value="Sent"/>
                </div>
            </div>   
            </form>
        </div>
    </body>
</html>
