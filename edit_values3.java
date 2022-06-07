package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import java.sql.Date;
import common.DB_Connection;
import common.Project;

public class edit_values3 {
  public Project get_value_of_user(int Project_ID) {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    Project obj_User_Bean3=new Project();
    try {
      String query="select * from Project where Project_ID='?'";
      ps=connection.prepareStatement(query);
      ps.setInt(1, Project_ID);
      rs=ps.executeQuery();
      while(rs.next()) {
        obj_User_Bean3.setProject_ID(rs.getInt("Project_ID"));
        obj_User_Bean3.setTitle(rs.getString("Title"));
        obj_User_Bean3.setSummary(rs.getString("Summary"));
        obj_User_Bean3.setMoney(rs.getInt("Money"));
        obj_User_Bean3.setStart_Date(rs.getDate("Start_Date"));
        obj_User_Bean3.setEnd_Date(rs.getDate("End_Date"));
        //obj_User_Bean3.setDuration(rs.getInt("Duration"));
     //   obj_User_Bean3.setOrganisation_Telephone_Numbers(rs.getInt("Organisation_Telephone_Numbers"));
      }
    } catch (Exception e) {
      System.out.println(e);
    }
    return obj_User_Bean3;
  }
  public void edit_project(Project obj_User_Bean3) {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    try {
      String query="UPDATE Project SET Title=?, Summary=?, Money=?, Start_Date=?, End_Date=? where Project_ID=?";
      ps=connection.prepareStatement(query);
      ps.setString(1, obj_User_Bean3.getTitle());
      ps.setString(2, obj_User_Bean3.getSummary());
      ps.setInt(3, obj_User_Bean3.getMoney());
      ps.setDate(4, obj_User_Bean3.getStart_Date());
      ps.setDate(5, obj_User_Bean3.getEnd_Date());
    //  ps.setInt(6, obj_User_Bean3.getDuration());
     // ps.setInt(7, obj_User_Bean3.getOrganisation_Telephone_Numbers());
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}

