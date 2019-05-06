/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package resultset_json;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import static resultset_json.Dbproperty.DB_Class;
import static resultset_json.Dbproperty.DB_URL;
/**
 *
 * @author flemi
 */
public class DbConnection {
    Connection con;
    public DbConnection(){
        try{
            Class.forName(DB_Class);
            System.out.println("Loaded fine");
        }catch(Exception e){
            System.out.println("Unsuccessful");
        }
    }
    public Connection setConnection(){
        try{
            con=DriverManager.getConnection(DB_URL);
            System.out.println("Success");
            return con;
        }catch(Exception ex){
            System.out.println("Whoops");
            ex.printStackTrace();
            return null;
        }
    }
}
