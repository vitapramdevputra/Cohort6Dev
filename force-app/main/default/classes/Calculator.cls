public class Calculator {
    //method overloading.
    //same name methods in a class.
    //differ by number of parameters or data type of parameters.
    
    //add method 
    public integer add(integer a, integer b){
        return a + b;
    }

    public integer mul(integer a, integer b){
        return a * b;
    }


    public integer add(integer x, integer y, integer z){
        return x+y+z;
    }

    public string add(string a, string b){
        return a+b;
    }

}