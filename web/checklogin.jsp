<%-- 
    Document   : checklogin
    Created on : 22/11/2018, 10:17:28 AM
    Author     : César
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<%@page import="clases.CryptWithMD5"%>
<!DOCTYPE html>
<%
    String usuario = "";
    String pass = "";
    String usuarioBD = "";
    String passBD = "";
    CryptWithMD5 obj = new CryptWithMD5();
    String query = "select * from farolito.usuarios";
    objConn.Consult(query);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("usr") != null) {
                usuario = request.getParameter("usr");
            }
            if (request.getParameter("pass") != null) {
                pass = request.getParameter("pass");
            }
            pass = obj.cryptWithMD5(pass);
            out.println("UsuarioPar: "+usuario);
            
            
            objConn.rs.beforeFirst();
            while(objConn.rs.next()){
                usuarioBD=objConn.rs.getString(2);
                passBD=objConn.rs.getString(3);
                
                if(usuario.equals(usuarioBD)){
                    
                out.println("Coincide");
                break;
                }else{
                out.println("Nelson Mandela"+ usuarioBD);
                }
            }
    %>  
    </body>
</html>
