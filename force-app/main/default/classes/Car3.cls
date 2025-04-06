public class Car3 {
    private string name;
    private string color;
    private integer numberOfSeats;

    //we can create getter setter methods 
    //getters methods: to get the value of private variables. 
    //setter methods: to set the value of private variables.

    //getter method
    public string getName(){
        return this.name;
    }
    public void setName(string name){
        //this. means class variable
        this.name = name;
    }

    //getter method
    public string getColor(){
        return this.color;
    }
    //setter method
    public void setColor(string color){
        this.color = color;
    }

    //getter method
    public integer getNumberOfSeats(){
        return this.numberOfSeats;
    }
    //setter method
        //using setter method we are Controlling what can be the values of variable
    public void setNumberOfSeats(integer seats){
        this.numberOfSeats = seats;
        if(seats < 2){
            system.debug('seats cannot be less than 2. ');
            this.numberOfSeats = 2;
        } 
        if(seats > 7){
            system.debug('its a car not a bus or plane');
            this.numberOfSeats = 7;
        }
        
    }
    
    public void displayInfo(){
        system.debug('Name of the car is: ' + name);
        system.debug('Color of the car is: ' + color);
        system.debug('Number of seats in the car is: ' + numberOfSeats);
    }
}