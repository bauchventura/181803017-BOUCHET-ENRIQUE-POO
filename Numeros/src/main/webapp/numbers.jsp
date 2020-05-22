<%-- 
    Document   : numbers
    Created on : 21 may 2020, 14:30:52
    Author     : Bauch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario FINAL!</h1>
        <%
            if ((request.getParameter("num") != null)&&(request.getParameter("num")!="-1")) {%>
            <h3>Los números son: </h3><br>
                <%
                int num = Integer.parseInt(request.getParameter("num"));
                for(int i=0;i<=num;i++){
                    out.print(i+" - ");
                }
                %>
            <form>
                <input type="hidden" name="num" value="-1" />
                <input type="submit" value="Reenviar"/>
            </form>
            <%
            }
            else{%>
            <form>
                Numero:<input type="number" name="num" required><br>
                <input type="submit" value="Enviar"><br>
                <input type="hidden" name="flag" value="/1/" />
            </form>
            <%}
        %>

    </body>
</html>
