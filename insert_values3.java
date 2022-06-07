package CRUD;

import java.sql.Connection;
import java.sql.Date;
import java.sql.Time;
import java.sql.PreparedStatement;
import common.DB_Connection;

public class insert_values3 {

    public void insert_values3(int Project_ID, String Title, String Summary, int Money, Date Start_Date, Date End_Date) {
      DB_Connection obj_DB_Connection=new DB_Connection ();
      Connection connection=obj_DB_Connection.get_connection();
      PreparedStatement ps=null;
      try {
        String query="INSERT INTO Project" + " (Project_ID, Title, Summary, Money, Start_Date, End_Date) VALUES " + " (?, ?, ?, ?, ?, ?)";
        ps=connection.prepareStatement(query);
        ps.setInt(1, Project_ID);
        ps.setString(2, Title);
        ps.setString(3, Summary);
        ps.setInt(4, Money);
        ps.setDate(5, Start_Date);
        ps.setDate(6, End_Date);
     //   ps.setInt(7, Duration);
        ps.executeUpdate();
      } catch (Exception e) {
        System.err.println(e);
      }
    }
}
