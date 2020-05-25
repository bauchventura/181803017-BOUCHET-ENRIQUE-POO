<%-- 
    Document   : problema2
    Created on : 25 may 2020, 9:53:31
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
        <h1>Polígonos</h1>
        <%
            if ((request.getParameter("size") != null)&&(request.getParameter("num") != null)&&(request.getParameter("flag")!="/1/")) {%>
            <h3>El perímetro es:</h3>
                <%
                int num = Integer.parseInt(request.getParameter("num"));
                int size = Integer.parseInt(request.getParameter("size"));
                int lon = num*size;
                out.print(" "+lon+"<br>");
                %>
                <h3>El área es:</h3>
                <%
                    double a = (360/(2*num));
                    double apo = (lon/(2*Math.tan(a)));
                    double area = (lon*apo)/2;
                    out.print(" "+area+"<br>");
                %>
            <form>
                <input type="hidden" name="flag" value="/0/" />
                <input type="submit" value="Reenviar"/>
            </form>
            <%
            }
            else{%>
            <form>
                Número de Lados:<input type="number" name="num" required><br>
                Longitud de un Lado:<input type="number" name="size" required><br>
                <input type="submit" value="Enviar"><br>
                <input type="hidden" name="flag" value="/1/" />
            </form>
            <%}
        %>
    </body>
</html>
