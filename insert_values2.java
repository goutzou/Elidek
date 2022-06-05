package CRUD;

import java.sql.Connection;

import java.sql.PreparedStatement;
import common.DB_Connection;

public class insert_values2 {

    public void insert_values2(int Telephone_Numbers, String Name, String Acronym, String Street, int Street_Number, String City, int Postal_Code) {
      DB_Connection obj_DB_Connection=new DB_Connection ();
      Connection connection=obj_DB_Connection.get_connection();
      PreparedStatement ps=null;
      try {
        String query="INSERT INTO Organisation (Telephone_Numbers, Name, Acronym, Street, Street_Number, City, Postal_Code) VALUES " + " (?, ?, ?, ?, ?, ?, ?)";
        ps=connection.prepareStatement(query);
        ps.setInt(1, Telephone_Numbers);
        ps.setString(2, Name);
        ps.setString(3, Acronym);
       // ps.setInt(4, Category_Category_ID);
        ps.setString(4, Street);
        ps.setInt(5,Street_Number);
        ps.setString(6, City);
        ps.setInt(7, Postal_Code);
        ps.executeUpdate();
      } catch (Exception e) {
        System.err.println(e);
      }
    }
}