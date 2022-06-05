package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;
import common.DB_Connection;

public class delete_values3 {

    public void delete_value3(int Project_ID) throws SQLException{
      DB_Connection obj_DB_Connection=new DB_Connection();
      Connection connection=obj_DB_Connection.get_connection();
      PreparedStatement ps=null;

      try {
        String query="delete from Project where Project_ID=? ;";
        ps=connection.prepareStatement(query);
        ps.setInt(1, Project_ID);
        ps.executeUpdate();
      } catch (Exception e) {
        System.out.println(e);
      }
    }
}


