<%-- 
    Document   : problema1
    Created on : 25 may 2020, 9:53:41
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
        <h1>Distancia entre dos puntos</h1>
        <%
            if ((request.getParameter("by") != null)&&(request.getParameter("bx") != null)&&(request.getParameter("ay") != null)&&(request.getParameter("ax") != null)&&(request.getParameter("flag")!="/1/")) {%>
            <h3>La distancia es: </h3><br>
                <%
                int ax = Integer.parseInt(request.getParameter("ax"));
                int ay = Integer.parseInt(request.getParameter("ay"));
                int bx = Integer.parseInt(request.getParameter("bx"));
                int by = Integer.parseInt(request.getParameter("by"));
                double dis = Math.sqrt((bx-ax)*(bx-ax)+(by-ay)*(by-ay));
                out.print(" "+dis+"<br>");
                %>
            <form>
                <input type="hidden" name="flag" value="/0/" />
                <input type="submit" value="Reenviar"/>
            </form>
            <%
            }
            else{%>
            <form>
                <h3>Posiciones</h3>
                Punto A(x):<input type="number" name="ax" required><br>
                Punto A(y):<input type="number" name="ay" required><br>
                Punto B(x):<input type="number" name="bx" required><br>
                Punto B(y):<input type="number" name="by" required><br>
                <input type="submit" value="Enviar"><br>
                <input type="hidden" name="flag" value="/1/" />
            </form>
            <%}
        %>
    </body>
</html>
