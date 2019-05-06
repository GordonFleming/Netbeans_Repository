/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package resultset_json;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.json.JSONObject;

/**
 *
 * @author flemi
 */
public class Main {
    ResultSet resultSet = null;
    EmpDAO empdao = new EmpDAO();
    public List<JSONObject>getJsonObject() throws SQLException{
        resultSet = empdao.getResultSet();
        List<JSONObject> resList = JsonServices.getFormattedResult(resultSet);
        return resList;
    }
    public static void main(String[] args) throws SQLException, IOException {
        Main m = new Main();
        List<JSONObject> jObj = m.getJsonObject();
        for(int i=0;i<jObj.size();i++){
            System.out.println(jObj.get(i));
        }
    }
}
