public class Car {
   
    //class variables (properties of the class)
    string name = 'Tesla'; //assigning default values to class variables
    string color = 'Black';
   

    //non-static method
    public void displayInfo(){
        system.debug('The name of the car is ' + name);
        system.debug('The color of the car is ' + color);
    }

   

}