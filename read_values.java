package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import common.DB_Connection;
import common.Researcher;

public class read_values {
  public static void main(String[] args) {
    read_values obj_read_values=new read_values();
    obj_read_values.get_values();
  }

  public List get_values() {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    List list= new ArrayList();
    try {
      String query="select * from Researcher";
      ps=connection.prepareStatement(query);
      rs=ps.executeQuery();
      while(rs.next()) {
        Researcher obj_User_Bean=new Researcher();
        obj_User_Bean.setResearcher_ID(rs.getInt("Researcher_ID"));
        obj_User_Bean.setName(rs.getString("Name"));
        obj_User_Bean.setsurname(rs.getString("surname"));
        obj_User_Bean.setGender(rs.getString("Gender"));
        obj_User_Bean.setAge(rs.getInt("Age"));
        obj_User_Bean.setDate_of_Birth1(rs.getDate("Date_of_Birth"));
        obj_User_Bean.setOrganisation_Telephone_Numbers(rs.getInt("Organisation_Telephone_Numbers"));
        list.add(obj_User_Bean);
      }
    } catch (Exception e) {
      System.out.println(e);
    }
    return list;
  }
}

