package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import common.DB_Connection;
import common.Researcher;


public class edit_values {
  public Researcher get_value_of_user(int Researcher_ID) {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    Researcher obj_User_Bean=new Researcher();
    try {
      String query="select * from Researcher where Researcher_ID='?'";
      ps=connection.prepareStatement(query);
      ps.setInt(1, Researcher_ID);
      rs=ps.executeQuery();
      while(rs.next()) {
        obj_User_Bean.setResearcher_ID(rs.getInt("Researcher_ID"));
        obj_User_Bean.setName(rs.getString("Name"));
        obj_User_Bean.setsurname(rs.getString("surname"));
        obj_User_Bean.setGender(rs.getString("Gender"));
        obj_User_Bean.setDate_of_Birth1(rs.getDate("Date_of_Birth"));
        obj_User_Bean.setOrganisation_Telephone_Numbers(rs.getInt("Organisation_Telephone_Numbers"));
      }
    } catch (Exception e) {
      System.out.println(e);
    }
    return obj_User_Bean;
  }
  public void edit_researcher(Researcher obj_User_Bean) {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    try {
      String query="update Researcher set Name=?, surname=?, Date_of_Birth=?, Gender=?, Organisation_Telephone_Numbers=? where Researcher_ID=?";
      ps=connection.prepareStatement(query);
      ps.setString(1, obj_User_Bean.getName());
      ps.setString(2, obj_User_Bean.getsurname());
      ps.setDate(3, obj_User_Bean.getDate_of_Birth1());
      ps.setString(4, obj_User_Bean.getGender());
      ps.setInt(5, obj_User_Bean.getOrganisation_Telephone_Numbers());
      ps.setInt(6,obj_User_Bean.getResearcher_ID());
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}
