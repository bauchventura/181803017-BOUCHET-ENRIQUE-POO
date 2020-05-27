<%-- 
    Document   : index
    Created on : 27 may 2020, 8:14:49
    Author     : Bauch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Número Mayor</h1>
        <form action="solicita.jsp">
            <input type="number" name="num" required/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
