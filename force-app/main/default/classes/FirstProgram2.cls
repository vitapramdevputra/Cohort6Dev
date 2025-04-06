public class FirstProgram2 {
	//class body. 
	//
	//method inside class
    public static void firstMethod(){
        //method body
        system.debug('we are inside firstProgram2 class > firstMethod');
    } 
    
    public static void assignmentMethod(){
        //assignment operator
        integer num1 = 45;
        integer num2 = 77;
        integer sum1 = num1 + num2;
        system.debug('sum1 : ' + sum1); //
        system.debug('num1 : ' + num1); //
        system.debug('num2 : ' + num2); //
        //datatype variable
        integer num3 = num2;//will this work? 
        system.debug('num3: ' + num3);
        
        integer num4 = num2/7;
        system.debug('num4: ' + num4);
        
        ID leadId = '00Qak00000Dm8jlEAB';
    }
    
    public static void primitive(){
        integer i = 32132131;
        system.debug('i -- ' + i);
        long y = 2147483648L;
        system.debug('y --> ' + y);
        
        double age = 1.5;
        system.debug('age= ' + age);
        
        system.debug('20/3 === ' + 20/3); //if both digits are integer, the result will be integer
        system.debug('20.0/3 === ' +20.0/3);//if ONE of the digit is decimal then result will be decimal
        system.debug('20/3.0 === ' +20/3.0);//if ONE of the digit is decimal then result will be decimal
        
    }
    
    public static void decimalMethod(){
        decimal d1 = 25.123456789;
        decimal d11 = d1.setScale(1);//1 digit after decimal point
        decimal d13 = d1.setScale(3);//3 digits after decimal point
        decimal d15 = d1.setScale(5);//5 digits after decimal point
        system.debug('d11 = ' + d11);
        system.debug('d13 = ' + d13);
        system.debug('d15 = ' + d15);
    }
    
    public static void primitive2(){
        boolean isMorning = true;
        boolean isFeb = false;
        boolean isJan = true;//will this work? NO. Won't work.
        boolean nullValid = null; //valid values for boolean are true, false, or null
        system.debug('is it morning? ' + isMorning + ', is it Feb? ' + isFeb + ', is it Jan? ' + isJan);
            
        string company = 'Salesforce';
        string a = 'true';
        string b = '1564';//will this work?
        
        system.debug('name of the company is ' + company);
        
        //concate means when we add any text to string
        //'Salesforce' + 99 => 'Salesforce99'
        integer i = 5;
        string s = '55';
        string si = s + i; //string + integer => results are in string // 'abc' + 5 => 'abc5'
        system.debug('si ==== ' + si); //555 or 60?
        
        integer x = 5;
        integer y = 55;
        system.debug(x+y); //60 (adding two numbers)
        
        integer c = 7;
        string v = 'seven';
        system.debug(c+v);//concate
        
    }
    public static void primitive3(){
        //date, time, datetime
        date todayDate = date.today(); //date is a class -- today() is a method
        system.debug('today date is ' + todayDate);
        
        //to create a date variable with ANY other date use 'newInstance' method
        //newInstance(year, month, day);
        
        date dt1 = date.newInstance(2024,9,15);
        system.debug('date we started cohort6: ' + dt1);
        
        
        //newInstance(hour, minutes, second, milliseconds)
        Time t1 = Time.newInstance(8,35,45,200);
        system.debug('t1: ' + t1);
        
        //datetime
        //current datetime
        datetime currentDT = datetime.now();//now will give us CURRENT Time.
        system.debug('current dt: ' + currentDT);
        
        //datetime.newInstance(year, month, day, hour, minute, seconds);
        datetime dtt1 = datetime.newInstance(2020,3,11,9,30,50);//creates date as per user's timezone, and print as GMT.
        system.debug('dtt1: ' + dtt1);
        
        ID leadID = '00Qak00000Dm8jl';//example of lead id.
        ID accID = '001ak00000p6kVsAAI'; //is this valid salesforce id? NO.
        system.debug('leadId ' + leadId);
        system.debug('accountid: ' + accId);
     }
    
}