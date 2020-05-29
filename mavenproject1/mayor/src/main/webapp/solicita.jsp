<%-- 
    Document   : solicita
    Created on : 27 may 2020, 8:27:22
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
        <h1>Ingresa los Números</h1>
        <form><%
            int num=Integer.parseInt(request.getParameter("num"));
            int[] vec={0};
            out.println("En total deben ser: "+num+"<br>");
            for(int i=0;i<num;i++){%>
            <input type="number" name="vec<%out.print(+i+"");%>" required/>
            <%
            }%>
            <input type="hidden" name="num" value=<%out.println(num+"");%>/>
            <input type="submit" value="envianding datos"/> 
        </form>
        <%  String v;
            int mayor=0;
            for(int i=0;i<num;i++){
                v="vec"+i+"";
                out.print(i+": "+request.getParameter(v)+"<br>");
                if(request.getParameter("vec0")!=null){
                    mayor = Integer.parseInt(request.getParameter("vec0"));
                    if((Integer.parseInt(request.getParameter(v))>=mayor)){
                        mayor = Integer.parseInt(request.getParameter(v));
                    }
                }
            }
            out.print("El numero mayor es: "+mayor);
        %>
       
    </body>
</html>
