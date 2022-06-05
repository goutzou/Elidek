package common;

import java.sql.Date;
import java.sql.Time;

public class Project {
  protected int Project_ID;
  protected String Title;
  protected String Summary;
  protected int Money;
  protected Date Start_Date;
  protected Date End_Date;
  protected int Organisation_Telephone_Numbers;
  public Project() {}

  public Project(int Project_ID, String Title, String Summary, int Money, Date Start_Date, Date End_Date) {
    super();
    this.Project_ID=Project_ID;
    this.Title=Title;
    this.Summary=Summary;
    this.Money=Money;
    this.Start_Date=Start_Date;
    this.End_Date=End_Date;
   // this.Duration=Duration;
  }

  public int getProject_ID() {
    return Project_ID;
  }

  public void setProject_ID(int pid) {
    this.Project_ID=pid;
  }

  public String getTitle() {
    return Title;
  }

  public void setTitle(String title) {
    this.Title=title;
  }

  public String getSummary() {
    return Summary;
  }

  public void setSummary(String sum) {
    this.Summary=sum;
  }

  public int getMoney() {
    return Money;
  }

  public void setMoney(int money) {
    this.Money=money;
  }

  public Date getStart_Date() {
    return Start_Date;
  }

  public void setStart_Date(Date stdate) {
    this.Start_Date=stdate;
  }

  public Date getEnd_Date() {
    return End_Date;
  }

  public void setEnd_Date(Date date) {
    this.End_Date=date;
  } 

  /*public int getDuration() {
    return Duration;
  }

  public void setDuration(int dur) {
    this.Duration=dur;
  }
*/
}