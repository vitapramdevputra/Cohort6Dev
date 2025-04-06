public class Car2 {
    //public variable
    public string name;
    //private variable
    private integer maxSpeed = 150;
    string color;
    public integer launchYear = 2020;

    public void displayInfo(){

        system.debug('Name of the car is: ' + name);
        system.debug('Color of the car is: ' + color);
        system.debug('Launch year of the car is: ' + launchYear);
        system.debug('Max speed of the car is: ' + maxSpeed +' km/hr');
    }

}