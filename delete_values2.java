package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;
import common.DB_Connection;

public class delete_values2 {

    public void delete_value2(int Telephone_Numbers) throws SQLException{
      DB_Connection obj_DB_Connection=new DB_Connection();
      Connection connection=obj_DB_Connection.get_connection();
      PreparedStatement ps=null;

      try {
        String query="delete from Organisation where Telephone_Numbers=? ;";
        ps=connection.prepareStatement(query);
        ps.setInt(1, Telephone_Numbers);
        ps.executeUpdate();
      } catch (Exception e) {
        System.out.println(e);
      }
    }
}

