public class StringMethods2 {
    public static void m3(){
        string s1 = 'we are still learning string methods in Apex language.';
        
        string a = 'Methods';
        
        boolean aCheck1 = s1.contains(a);//checking if s1 string contains Methods
        system.debug('s1 contains Methods? ' + acheck1); //false. Because s1 string contains methods not Methods (m is small)
        
        //but what if we want to check if the string contains substring by IGNORING case
        boolean aCheck2 = s1.containsIgnoreCase(a); //case insensitive method
        system.debug('s1 containsIgnoreCase Methods :' + aCheck2);
        
         boolean aCheck3 = s1.containsIgnoreCase('METH'); //case insensitive method
        system.debug('s1 containsIgnoreCase METH :' + aCheck3);
    }
    public static void m4(){
        string s1 = 'remote control';
        
        boolean check1 = s1.equals('remote control');
        system.debug('check1 : ' + check1);//true
        
        boolean check2 = s1.equals('Remote Control');
        system.debug('check2 : ' + check2);//false (because of case sensitivity)
        
        boolean check3 = s1.equalsIgnoreCase('REMOTE control'); //equalsIgnoreCase will ignore case (case insensitive method)
        system.debug('check3 : ' + check3);//true        
        
    }
    
    public static void m5(){
        string s1 = 'My name is Bond, James Bond';
        integer index1 = s1.indexOf('n');
        system.debug('index of n in s1: ' + index1);
        
        integer index2 = s1.indexOf('Bond!');
        system.debug('index of Bond! in s1: ' + index2);
        
        string s2 = s1.remove('Bond');
        
        string s3 = s2.remove(',');
       
        system.debug('s1: ' + s1);
        system.debug('s2 is ' + s2); //remove is NOT updating the original string. It returns us a new string.
         system.debug('s3 : ' + s3);
        
        string s4 = s1.removeEnd('Bond');
        system.debug('s4 : ' + s4);
        
        boolean checkStart = s1.startsWith('My name');
        system.debug('s1 starts with My name: ' + checkStart);
        
        boolean checkEnds = s1.endsWith('James Bond');
        system.debug('s1 ends with James Bond: ' + checkEnds);
        
        
    }
    public static void m6(){
        integer i = 50;
        integer j = 100;
        system.debug(i+j);
        
        string si = String.valueOf(i);
        string sj = string.valueOf(j);
        system.debug(si+sj);
    }
    
    public static void m7(){
        string s1 = 'My name is Bond, James Bond';
        string s2 = s1.substring(17); //will return us the string from the index 17 of original string
        system.debug('s2: ' + s2);
        
        //pass startIndex and endIndex
        string s3 = s1.substring(17, 21);//returns the substring in between index 17 and 22.
        system.debug('s3: ' + s3);
        
        string s4 = s1.substringBefore('Bond,');
        string s5 = s1.substringAfter('Bond,');
        system.debug('s4: ' + s4);
        system.debug('s5: ' + s5);
        
        string s6 = s1.toUpperCase();
        string s7 = s1.toLowerCase();
        system.debug('s6: ' + s6);
        system.debug('s7: ' + s7);
        
        //pass startIndex and endIndex
        //string s8 = s1.substring(17, 30);//throw error because NO SUCH INDEX
        //system.debug('s8: ' + s3);
    }
    

}