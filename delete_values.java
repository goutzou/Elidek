package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;
import common.DB_Connection;

public class delete_values {

    public void delete_value(int Researcher_ID) throws SQLException{
      DB_Connection obj_DB_Connection=new DB_Connection();
      Connection connection=obj_DB_Connection.get_connection();
      PreparedStatement ps=null;

      try {
        String query="delete from Researcher where Researcher_ID=? ;";
        ps=connection.prepareStatement(query);
        ps.setInt(1, Researcher_ID);
        ps.executeUpdate();
        connection.commit();
      } catch (Exception e) {
        System.out.println(e);
      }
    }
}
