package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import common.DB_Connection;
import common.Project;
import java.text.ParseException;

public class read_values3 {
  public static void main(String[] args) {
    read_values3 obj_read_values3=new read_values3();
    obj_read_values3.get_values3();
  }

  public List get_values3() {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    List list= new ArrayList();
    try {
      String query="select * from Project";
      ps=connection.prepareStatement(query);
      rs=ps.executeQuery();
      while(rs.next()) {
        Project obj_User_Bean3=new Project();
        obj_User_Bean3.setProject_ID(rs.getInt("Project_ID"));
        obj_User_Bean3.setTitle(rs.getString("Title"));
        obj_User_Bean3.setMoney(rs.getInt("Money"));
        try {
        obj_User_Bean3.setStart_Date(rs.getDate("Start_Date"));
        obj_User_Bean3.setEnd_Date(rs.getDate("End_Date"));
        } catch (Exception e) {
        	System.out.println(e);
        }
       // obj_User_Bean3.setDuration(rs.getInt("Duration"));
       // obj_User_Bean3.setOrganisation_Telephone_Numbers(rs.getInt("Organisation_Telephone_Numbers"));
        list.add(obj_User_Bean3);
      }
    } catch (Exception e) {
      System.out.println(e);
    }
    return list;
  }
}