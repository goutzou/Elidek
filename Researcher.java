package common;

import java.sql.Date;

public class Researcher {
  protected int Researcher_ID;
  protected String Name;
  protected String surname;
  protected String Gender;
  protected int Age;
  protected Date Date_of_Birth;
  protected int Organisation_Telephone_Numbers;

  public Researcher() {}
  public Researcher(int Researcher_ID, String Name, String surname, String Gender, int Age, Date Date_of_Birth, int Organisation_Telephone_Numbers) {
    super();
    this.Researcher_ID=Researcher_ID;
    this.Name=Name;
    this.surname=surname;
    this.Gender=Gender;
    this.Age=Age;
    this.Date_of_Birth=Date_of_Birth;
    this.Organisation_Telephone_Numbers=Organisation_Telephone_Numbers;
  }

  public int getResearcher_ID() {
    return Researcher_ID;
  }

  public void setResearcher_ID(int id) {
    this.Researcher_ID=id;
  }

  public String getName() {
    return Name;
  }

  public void setName(String name) {
    this.Name=name;
  }

  public String getsurname() {
    return surname;
  }

  public void setsurname(String surname) {
    this.surname=surname;
  }

  public String getGender() {
    return Gender;
  }

  public void setGender(String Gender) {
    this.Gender=Gender;
  }

  public int getAge() {
    return Age;
  }

  public void setAge(int Age) {
    this.Age=Age;
  }
  
  public Date getDate_of_Birth1() {
    return Date_of_Birth;
  }

  public void setDate_of_Birth1(Date Date_of_Birth) {
	    this.Date_of_Birth=Date_of_Birth;
	  }

  public int getOrganisation_Telephone_Numbers() {
    return Organisation_Telephone_Numbers;
  }

  public void setOrganisation_Telephone_Numbers(int telenums) {
    this.Organisation_Telephone_Numbers=telenums;
  }
}
