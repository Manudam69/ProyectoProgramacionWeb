/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mySql;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySqlConn {

    public Statement stmt = null;
    public ResultSet rs = null;
    public Connection conn = null;
    public PreparedStatement psmt=null;

    public MySqlConn() {
        //Conectar con mysql...
        try {
            //cargando el driver
            Class.forName("com.mysql.jdbc.Driver");
            String connectionUrl
                    = "jdbc:mysql://localhost/farolito?"
                    + "user=root&password=hola";
            // conexion con la bd
            conn = DriverManager.getConnection(connectionUrl);
        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.toString());
        } catch (ClassNotFoundException cE) {
            System.out.println("Class Not Found Exception: "
                    + cE.toString());
        }
    }

    public void Consult(String query) {
        //information_schema
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query); //envia una consulta devuelve un objeto ResultSet para su implementacion
            if (rs != null) {
                rs = stmt.getResultSet(); //obtiene los resultados
                //se coloca sobre el primer registro
                rs.first();
            }
        } catch (SQLException ex) {
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("Error: " + ex.getErrorCode());
        }
    }

    public int Update(String query) {
        //information_schema
        int rModif = 0;
        try {
            stmt = conn.createStatement();
            rModif = stmt.executeUpdate(query);
        } catch (SQLException ex) {
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("Error: " + ex.getErrorCode());
        }
        return rModif;
    }

    public void closeRsStmt() {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException sqlEx) {
            } // ignore
            rs = null;
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException sqlEx) {
            } // ignore
            stmt = null;
        }
    }

    public void closeConnection() {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException sqlEx) {
        } // ignore
        rs = null;
    }

    public void CrearDB(boolean b) {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "hola");
            Statement statement = connection.createStatement();
            String query = "create data base if not exists empresa";
            statement.executeUpdate(query);
            b=true;

        } catch (Exception e) {
            b=false;
        }
    }

    public void CrearTabla(boolean b) {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/farolito", "root", "hola");
            Statement statement = connection.createStatement();
            String query = "create table if not exists empleado (nombre varchar(40),edad integer, area_Trabajo varchar(40), sueldo integer);";
            statement.executeUpdate(query);
           b=true;
        } catch (Exception e) {
           b=false;
        }
    }
    public void RetriveData(){
        Connection connection =null;
        try{
            connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/farolito", "root", "hola");
            Statement statement = connection.createStatement();
            String query="select * from farolito.productos p;";
            statement.execute(query);
        }catch(Exception e){       
    }
        
    }
    public void add(int id,int precio, int exsist, String nombre, String desc, FileInputStream fis, File file)throws SQLException{
        psmt= conn.prepareStatement("insert into productos (idProductos, precio, existencias,nombre,descripcion,image)"+"values(?,?,?,?,?,?)");
        psmt.setInt(1, id);
        psmt.setInt(2, precio);
        psmt.setInt(3, exsist);
        psmt.setString(4, nombre);
        psmt.setString(5, desc);
        psmt.setBinaryStream(6, (InputStream) fis, (int)(file.length()));
        psmt.executeUpdate();
        conn.close();
        psmt.close();
    }
    
    public void addUsr(int id, String usr, String pass, String mail, String nomb, int preg, String res) throws SQLException{
        String query= "insert into usuarios(id, Usuario, Contra, Correo, Nombre, Pregunta, Respuesta)"+"values(?,?,?,?,?,?,?)";
        psmt=conn.prepareStatement(query);
        psmt.setInt(1, id);
        psmt.setString(2, usr);
        psmt.setString(3, pass);
        psmt.setString(4, mail);
        psmt.setString(5, nomb);
        psmt.setInt(6, preg);
        psmt.setString(7, res);
        psmt.executeUpdate();
        conn.close();
        psmt.close();
    }
}
