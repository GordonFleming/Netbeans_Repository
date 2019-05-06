/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package resultset_json;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author flemi
 */
public class EmpDAO {
    DbConnection dbconn = new DbConnection();
    private static final String SQL = "select * from tblVenues";
    Connection con = null;
    PreparedStatement pst=null;
    ResultSet resultSet=null;
    public ResultSet getResultSet(){
        try{
          con = dbconn.setConnection();
            pst = con.prepareStatement(SQL);
            resultSet = pst.executeQuery();
        }catch(Exception ex){
            System.out.println("Whoops");
            ex.printStackTrace();
        }
        return resultSet;
    }
}
