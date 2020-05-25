<%-- 
    Document   : problema4
    Created on : 25 may 2020, 9:53:18
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
        <h1>Números Primos!</h1>
        <%
            if ((request.getParameter("num") != null)&&(request.getParameter("flag")!="/1/")) {%>
            <h3>El número es: </h3><br>
                <%
                int aux=0;
                int num = Integer.parseInt(request.getParameter("num"));
                for(int i=1;i<=num;i++){
                    if((num % i)==0){
                        aux++;
                    }
                }
                if(aux>2){
                    %>
                    <h3>El número no es primo</h3>
                    <%
                }
                else{
                    %>
                    <h3>El número si es primo</h3>
                    <%
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
                Número:<input type="number" name="num" required><br>
                <input type="submit" value="Enviar"><br>
                <input type="hidden" name="flag" value="/1/" />
            </form>
            <%}
        %>
    </body>
</html>
