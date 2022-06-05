package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import common.DB_Connection;
import common.Organisation;

public class edit_values2 {

  public Organisation get_value_of_user2(int Telephone_Numbers) {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    Organisation obj_User_Bean2=new Organisation();
    try {
      String query="SELECT * FROM Organisation WHERE Telephone_Numbers='?'";
      ps=connection.prepareStatement(query);
      ps.setInt(1, Telephone_Numbers);
      rs=ps.executeQuery();
      while(rs.next()) {
        obj_User_Bean2.setTelephone_Numbers(rs.getInt("Telephone_Numbers"));
        obj_User_Bean2.setName(rs.getString("Name"));
        obj_User_Bean2.setAcronym(rs.getString("Acronym"));
        //obj_User_Bean2.setCategory_Category_ID(rs.getInt("Category_Category_ID"));
        obj_User_Bean2.setStreet(rs.getString("Street"));
        obj_User_Bean2.setStreet_Number(rs.getInt("Street_Number"));
        obj_User_Bean2.setCity(rs.getString("City"));
        obj_User_Bean2.setPostal_Code(rs.getInt("Postal_Code"));
      }
    } catch (Exception e) {
      System.out.println(e);
    }
    return obj_User_Bean2;
  }
  public void edit_organisation(Organisation obj_User_Bean2) {
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.get_connection();
    PreparedStatement ps=null;
    try {
      String query="update Organisation set Name=?, Acronym=?, Street=?, Street_Number=?, City=?, Postal_code=?, where Telephone_Numbers=?";
      ps=connection.prepareStatement(query);
      ps.setString(1, obj_User_Bean2.getName());
      ps.setString(2, obj_User_Bean2.getAcronym());
     // ps.setInt(3, obj_User_Bean2.getCategory_Category_ID());
      ps.setString(4, obj_User_Bean2.getStreet());
      ps.setInt(5, obj_User_Bean2.getStreet_Number());
      ps.setString(6, obj_User_Bean2.getCity());
      ps.setInt(7,obj_User_Bean2.getPostal_Code());
      ps.setInt(8, obj_User_Bean2.getTelephone_Numbers());
      connection.commit();
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}
