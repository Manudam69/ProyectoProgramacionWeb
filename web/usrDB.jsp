<%-- 
    Document   : usrDB
    Created on : 21/11/2018, 07:41:33 PM
    Author     : César
--%>

<%@page import="clases.CryptWithMD5"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usr = request.getParameter("usr");
            String pass = request.getParameter("pass1");
            String idS = request.getParameter("id");
            String nom= request.getParameter("nomb");
            String mail=request.getParameter("correo");
            String pregS= request.getParameter("pregunta");
            String res= request.getParameter("res");
            int id = Integer.parseInt(idS);
            int preg= Integer.parseInt(pregS);
            CryptWithMD5 obj = new CryptWithMD5();
            pass = obj.cryptWithMD5(pass);
            objConn.addUsr(id, usr, pass, mail, nom, preg, res);      
        %>    
        <jsp:forward page="Login.jsp"/>
    </body>
</html>
