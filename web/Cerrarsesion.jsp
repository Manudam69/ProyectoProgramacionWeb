<%-- 
    Document   : Cerrarsesion
    Created on : 22/11/2018, 06:40:26 PM
    Author     : César
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%

    HttpSession sesionOk = request.getSession();
    sesionOk.invalidate();
%>
<jsp:forward page="index.jsp"/>