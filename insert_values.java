package CRUD;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import common.DB_Connection;

public class insert_values {

    public void insert_values(int Researcher_ID, String Name, String surname, String Gender, int Age, Date Date_of_Birth, int Organisation_Telephone_Numbers) {
      DB_Connection obj_DB_Connection=new DB_Connection ();
      Connection connection=obj_DB_Connection.get_connection();
      PreparedStatement ps=null;
      try {
        String query="INSERT INTO Researcher (Researcher_ID, Name, surname, Gender, Age, Date_of_Birth, Organisation_Telephone_Numbers) VALUES " + " (?, ?, ?, ?, ?, ?, ?)";
        ps=connection.prepareStatement(query);
        ps.setInt(1, Researcher_ID);
        ps.setString(2, Name);
        ps.setString(3, surname);
        ps.setString(4, Gender);
        ps.setInt(5, Age);
        ps.setDate(6, Date_of_Birth);
        ps.setInt(7, Organisation_Telephone_Numbers);
        ps.executeUpdate();
      } catch (Exception e) {
        System.err.println(e);
      }
    }
}
