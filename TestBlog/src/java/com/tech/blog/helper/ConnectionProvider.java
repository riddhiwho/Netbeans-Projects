package com.tech.blog.helper;
import static java.lang.System.out;
import java.sql.*;
public class ConnectionProvider {

    public static Connection con;
    public static Connection getConnection(){
        
        try{
            
            if(con==null){
                //load driver class
                Class.forName("com.mysql.cj.jdbc.Driver");

                //create connection
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "riddhi", "riddhi");
                out.println("connnn   "+con);
            }
          
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
    
}
