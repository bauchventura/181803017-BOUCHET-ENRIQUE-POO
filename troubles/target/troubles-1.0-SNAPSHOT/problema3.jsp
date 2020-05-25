<%-- 
    Document   : problema3
    Created on : 25 may 2020, 9:53:07
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
        <h1>Grupos!</h1>
        <%
            if ((request.getParameter("flag")!="/1/")&&(request.getParameter("name")!=null)&&(request.getParameter("sex")!=null)) {%>
                <%
                String sexo = request.getParameter("sex");
                String name = request.getParameter("name");
                switch(sexo.codePointAt(0)){
                    case 77:
                    case 109:{
                        if(((name.codePointAt(0)>=65)&&(name.codePointAt(0)<=77))||((name.codePointAt(0)>=97)&&(name.codePointAt(0)<=109))){%>
                                <h3>Felicidades eres del Grupo A</h3>
                            <%}
                        else{%>
                                <h3>Felicidades eres del Grupo B</h3>
                            <%}
                        break;
                    }
                    case 72:
                    case 104:{
                            if(((name.codePointAt(0)>=78)&&(name.codePointAt(0)<=90))||((name.codePointAt(0)>=110)&&(name.codePointAt(0)<=122))){%>
                                <h3>Felicidades eres del Grupo A</h3>
                            <%}
                            else{%>
                                <h3>Felicidades eres del Grupo B</h3>
                            <%}
                        break;
                    }
                    default:{%>
                                <h3>No hay instrucciones para otro sexo ni género</h3>
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
                Nombre:<input type="text" name="name" required><br>
                Sexo:<input type="text" name="sex" required><br>
                <input type="submit" value="Enviar"><br>
                <h5>Para el sexo solo escriba (h o H)para hombre o (m o M)para mujer</h5>
                <input type="hidden" name="flag" value="/1/" />
            </form>
            <%}
        %>
    </body>
</html>
