package common;


public class Organisation {
  int Telephone_Numbers;
  String Name;
  String Acronym;
  int Category_Category_ID;
  String Street;
  int Street_Number;
  String City;
  int Postal_Code;

  public Organisation() {}

  public Organisation(int Telephone_Numbers, String Name, String Acronym, String Street, int Street_Number,
  String City, int Postal_Code) {
    super();
    this.Telephone_Numbers=Telephone_Numbers;
    this.Name=Name;
    this.Acronym=Acronym;
   // this.Category_Category_ID=Category_Category_ID;
    this.Street=Street;
    this.Street_Number=Street_Number;
    this.City=City;
    this.Postal_Code=Postal_Code;
  }

  public int getTelephone_Numbers() {
    return Telephone_Numbers;
  }

  public void setTelephone_Numbers(int telenums) {
    this.Telephone_Numbers=telenums;
  }

  public String getName() {
    return Name;
  }

  public void setName(String Name) {
    this.Name=Name;
  }

  public String getAcronym() {
    return Acronym;
  }

  public void setAcronym(String acronym) {
    this.Acronym=acronym;
  }

  /*public int getCategory_Category_ID() {
    return Category_Category_ID;
  }

  public void setCategory_Category_ID(int catid) {
    this.Category_Category_ID=catid;
  }*/

  public String getStreet() {
    return Street;
  }

  public void setStreet(String str) {
    this.Street=str;
  }

  public int getStreet_Number() {
    return Street_Number;
  }

  public void setStreet_Number(int strnum) {
    this.Street_Number=strnum;
  }

  public String getCity() {
    return City;
  }

  public void setCity(String City) {
    this.City=City;
  }

  public int getPostal_Code() {
    return Postal_Code;
  }

  public void setPostal_Code(int Postal_Code) {
    this.Postal_Code=Postal_Code;
  }

}