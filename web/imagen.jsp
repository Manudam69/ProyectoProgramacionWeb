<%-- 
    Document   : mostrarimagen
    Created on : 20/11/2018, 09:12:27 AM
    Author     : César
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
 
String connectionURL = "jdbc:mysql://localhost:3306/farolito";
String user = "root";
String pass = "1234";
 
Connection con = null;
 
try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL, user, pass);

    PreparedStatement ps = con.prepareStatement("select * from productos where id_p=?");
    ps.setString(1, id);
    ResultSet rs = ps.executeQuery();
 
    if(rs.next()){
        Blob blob = rs.getBlob("image");
        byte byteArray[] = blob.getBytes(1, (int)blob.length());
 
        response.setContentType("image/gif");
        OutputStream os = response.getOutputStream();
        os.write(byteArray);
        os.flush();
        os.close();
    }
}
catch(Exception e){
    e.printStackTrace();
}
finally{
    if(con != null){
        try{
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
%>
