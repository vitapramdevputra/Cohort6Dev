public class Employee {

    //constructor name is SAME as class name
    //no return type.
    public Employee(){
        //constructor is called as soon as a new instance of the class is created.
        system.debug('** employee() constructor called**');
        joiningYear = Date.today().year();
    }

    //another constructor
        //parameterized constructor
    public Employee(string name, string gender, integer joiningYear){
        this.name = name;
        this.gender = gender;
        this.joiningYear = joiningYear;
        displayInfo();
    }



    //static variable ==> the value is directly associated with CLASS
    public static string companyName;
    public static void printCompanyName(){
        system.debug('Company name : ' + companyName);
        //system.debug('name: ' + name);//not work. we cannot use NON-static member inside STATIC method.
    }
  

    //non-static variables ==> the value is associated with each OBJECT(INSTANCE) of a CLASS
    public string name;
    public string gender;
    public integer joiningYear;
    public void displayInfo(){
        system.debug('name : ' + name);
        system.debug('gender : ' + gender);
        system.debug('joining Year: ' + joiningYear);
        //we can use static variable INSIDE non-static methods.
        system.debug('company name : ' + companyName);
    }


}