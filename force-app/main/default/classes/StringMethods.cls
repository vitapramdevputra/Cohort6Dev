public class StringMethods {

    public static void m1(){
        string name = 'venus';
        //make 1st letter capital.
        //we use capitalize method
        string name2 = name.capitalize();//capitalize first letter and return us the new string.
        system.debug('name : ' + name);
        system.debug('name2: ' + name2);
        
        string name3 = 'VENUS';
        boolean isName3Upper = name3.isAllUpperCase(); //return us BOOLEAN (true or false) - if all letters are CAPITAL then true else false.
    	system.debug('is name3 in upper case? ' + isName3Upper);
        
        string name4 = 'Venus';
        boolean isName4Upper = name4.isAllUpperCase(); //return us BOOLEAN (true or false) - if all letters are CAPITAL then true else false.
    	system.debug('is name4 in upper case? ' + isName4Upper);
        
        string name31 = 'VENus';
        boolean isName31lower = name31.isAllLowerCase(); //return us BOOLEAN (true or false) - if all letters are lower case then true else false.
    	system.debug('is name31 in lower case? ' + isName31lower);
        
        string name41 = 'venus';
        boolean isName41lower = name41.isAllLowerCase(); //return us BOOLEAN (true or false) - if all letters are lower case then true else false.
    	system.debug('is name41 in lower case? ' + isName41lower);
    }  
    
    public static void m2(){
        string s1 = 'we are learning string methods in Apex.';
        
        //length of the string above?
        integer s1len = s1.length();//returns total number of characters in string including spaces.
        system.debug('length of s1 is ' + s1len);
        
        //contains method will return is a substring is present in string.
        boolean containsApex = s1.contains('Apex');//s1 contains Apex?
        system.debug('s1 contains Apex? ' + containsApex);
        
        boolean abcd = s1.contains('apex');//s1 contains apex?  when it comes to string, apex language is case sensitive
        system.debug('s1 contains apex? ' + abcd);
        
        boolean b2 = s1.contains('Learning');
        system.debug('s1 contains Learning? ' + b2);
        
        boolean b3 = s1.contains('we are learn');
        system.debug('s1 contains we are learn? ' + b3);
        
        boolean b4 = s1.contains('string met');
        system.debug('s1 contains string met? ' + b4);
        
    }
}