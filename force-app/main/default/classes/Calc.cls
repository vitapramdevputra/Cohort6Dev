public class Calc {
    //private variables. only accessible inside the class. We cannot access the variables directly outside the class.
    integer a = 10; //by default all class variables are private.
    integer b = 20;

    public void setValues(integer num1, integer num2){
        //set a and b from num1 and num2
        a = num1;
        b = num2;
    }

    //this is a private method
    public void displayInfo(){
        system.debug('a:' + a);
         system.debug('b:' + b);
    }

    public integer add(){
        integer sum = a + b;
        system.debug('addition results are.. ');
        print(sum);//methodName(parameters if any)
        return sum;
    }

    public void subtract(){
        integer diff = a - b;
        system.debug('subtraction results are.. ');
        print(diff);
    }

    //private method is access INSIDE the same class
    private void print(integer result){
        system.debug('Result: ' + result);
    }
}