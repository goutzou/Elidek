package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import common.DB_Connection;
import common.Organisation;

public class read_values2 {
  public static void main(String[] args) {
    read_values2 obj_read_values2=new read_values2();
    obj_read_values2.get_values2();
  }

  public List get_values2() {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    List list= new ArrayList();
    try {
      String query="select * from Organisation";
      ps=connection.prepareStatement(query);
      rs=ps.executeQuery();
      while(rs.next()) {
        Organisation obj_User_Bean2=new Organisation();
        obj_User_Bean2.setTelephone_Numbers(rs.getInt("Telephone_Numbers"));
        obj_User_Bean2.setName(rs.getString("Name"));
        obj_User_Bean2.setAcronym(rs.getString("Acronym"));
        obj_User_Bean2.setStreet(rs.getString("Street"));
        obj_User_Bean2.setStreet_Number(rs.getInt("Street_Number"));
        obj_User_Bean2.setPostal_Code(rs.getInt("Postal_Code"));
       // obj_User_Bean2.setCategory_Category_ID(rs.getInt("Category_Category_ID"));
        list.add(obj_User_Bean2);
      }
    } catch (Exception e) {
      System.out.println(e);
    }
    return list;
  }
}
