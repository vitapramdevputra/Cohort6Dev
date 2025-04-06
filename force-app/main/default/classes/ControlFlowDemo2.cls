public class ControlFlowDemo2 {
    public static void largest(){
        integer a = 20, b = 15, c=27;
        
        //check if a is bigger than b
        system.debug('a > b : ' + (a > b));
        if(a > b){
            system.debug('a > c : ' + (a > c));
            //check if a is also bigger than c
            if(a > c){
                system.debug('a is largest. a = ' + a);
            } else {
                system.debug('c is largest. c = ' + c);
            }
        } else {
            system.debug('b > c : ' + (b > c));
            if(b > c){
                system.debug('b is largest. b = ' + b);
            } else {
                system.debug('c is largest. c = ' + c);
            }
        }
    }
    public static void checkpoint1(){
        integer age = 62;
        if (age < 18){
            System.debug ('You are Minor');
            System.debug('You are not Eligible to work');
        } else {
            if(age >= 18 && age <= 60){
                System.debug ('You are Eligible to work');
                System.debug ('Please fill your details and apply');
            }else{
                System.debug('You are too old to work as per the Government rules');
                System.debug ('Please collect your pension');
            }
        }
    }
    public static void rankSwitch(){
        integer rank = 2;
        string prize;
        switch on rank{
            when 1{
                prize = 'Gold';
            }
            when 2{
                prize = 'Silver';
            }
            when 3{
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10{
                prize = 'Aluminium';
            }
            when else{
                prize = 'Nothing.';
            }
        }
        system.debug('You won ' + prize );
    }
    public static void weekendCheck(){
        string day = 'Sunday';
        day = day.toLowerCase();//convert the entire string to lowercase.
        
        switch on day{
            when 'sunday','saturday'{
                system.debug('its weekend. Enjoy.');
            }
            when else {
                system.debug('its weekday. go to work.');
            }
        }
    }
    
    public static void whileDemo1(){
        integer i = 1;
        while (i <= 5){
            system.debug(i);
            system.debug('hello');
            i++;//increment by 1. 
        }
        
    }
    public static void whileDemoFail(){
        integer i = 1;
        while (i <= 5){
            system.debug(i);
        }
        
    }
    public static void whileCheckpoint(){
        Integer num = 95478;
        while(num > 0){
            Integer dig = Math.mod(num,10); //last digit of the number -> 8 | 7 | 4 | 5 | 9
            System.debug('digit: ' + dig);//8 | 7 | 4 | 5 | 9
            num = num / 10; //it will remove the last digit -> 9547 | 954 | 95 | 9 | 0
            system.debug('num: ' + num);
        }
    }
    
    public static void whileDemo2(){
        integer i = 5; //*****
        string output = '';
        while(i > 0){
            output += '*';
            system.debug(output);
            i--;
        }
        system.debug('final output: ' + output);
    }
    
    public static void forLoopDemo(){
        string output = '';
        for(integer i = 10; i > 0; i--){
            output += '*';
            system.debug(i);
        }
        system.debug('final output: ' + output);
    }
    public static void printEven(){
        integer startInt = 10;
        integer endInt = 25;
        //print event numbers in between startInt and endInt
        for(integer i = startInt; i < endInt; i++){
            //check if i is event.
            //math.mod(i,2)
            integer remainder = math.mod(i,2);
            if(remainder == 0){
                system.debug(' i is Even number: ' + i);
            }
        }
        
    }
    public static void nestedForLoop1(){
        for(integer a = 1; a<5; a++){
            
            for(integer b = 101; b< 104; b++){
                system.debug('a => ' + a);
                system.debug('b => ' + b);
            }
            
            system.debug('* a => ' + a);
        }
    }
}