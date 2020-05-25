<%-- 
    Document   : problema1
    Created on : 25 may 2020, 9:49:42
    Author     : Bauch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Días de la semana</h1>
        <%
            if ((request.getParameter("num") != null)&&(request.getParameter("flag")!="/0/")) {%>
            <h3>El día de la semana es: </h3><br>
                <%
                int num = Integer.parseInt(request.getParameter("num"));
                switch(num){
                    case 1:{
                        %>
                        <h2>Domingo</h2>
                        <%
                        break;
                    }
                    case 2:{
                        %>
                        <h2>Lunes</h2>
                        <%
                        break;
                    }
                    case 3:{
                        %>
                        <h2>Martes</h2>
                        <%
                        break;
                    }
                    case 4:{
                        %>
                        <h2>Miercoles</h2>
                        <%
                        break;
                    }
                    case 5:{
                        %>
                        <h2>Jueves</h2>
                        <%
                        break;
                    }
                    case 6:{
                        %>
                        <h2>Viernes</h2>
                        <%
                        break;
                    }
                    case 7:{
                        %>
                        <h2>Domingo</h2>
                        <%
                        break;
                    }
                    default:{
                        %>
                        <h2>Número no valido intenta de nuevo</h2>
                        <%
                        break;
                    }
                }
                %>
            <form>
                <input type="hidden" name="flag" value="/0/" />
                <input type="submit" value="Reenviar"/>
            </form>
            <%
            }
            else{%>
            <form>
                <h4>Digite un número entre el 1 al 7</h4>
                Número:<input type="number" name="num" required><br>
                <input type="submit" value="Enviar"><br>
                <input type="hidden" name="flag" value="/1/" />
            </form>
            <%}
        %>
    </body>
</html>
