package common;

public class Executive {
  protected int Executive_ID;
  protected String Name;

  public Executive() {}

  public Executive(int Executive_ID, String Name) {
    super();
    this.Executive_ID=Executive_ID;
    this.Name=Name;
  }

  public int getExecutive_ID() {
    return Executive_ID;
  }

  public void setExecutive_ID(int execid) {
    this.Executive_ID=execid;
  }

  public String getName() {
    return Name;
  }

  public void setName(String Name) {
    this.Name=Name;
  }

}