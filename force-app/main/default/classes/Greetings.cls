public class Greetings {
    //this method doesn't accept any parameters
    public void sayHello(){
        system.debug('Hi there, welcome to the world of Apex!');
    }

    //this method is now accepting string parameter.
    public void sayHellooo(string name){

        system.debug('Hi ' + name + ' welcome to the world of Apex!');
    
    }

    public void sayHello2(string name, string tech){
        system.debug('Hi ' + name + ' welcome to the world of ' + tech + '!');
    
    }

    public void sayHello3(string name, integer age){
        system.debug('Hi ' + name + ' your age is ' + age + '!');
    }

}