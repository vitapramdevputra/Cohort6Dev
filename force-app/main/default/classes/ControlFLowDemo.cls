public class ControlFLowDemo {
    public static void ifDemo(){
        //in apex if condition we MUST pass boolean
        
        integer i = 500, j = 100;
        //boolean
        if(i < j){
            system.debug('i is smaller than j');
            system.debug('j is bigger than i');
        }
        
        //if we JUST need 1 statement inside if or else we can skip the brackets.
        if(i> j) 
            system.debug('i is bigger than j');
        
        system.debug('end of method');
    }
    
    public static void ifDemo2(){
        string pw = 'Admin115';
        //how to check if pw contains any numbers?
        if(pw.contains('0') || pw.contains('1') || pw.contains('2') || pw.contains('3') || pw.contains('4')
          || pw.contains('5') || pw.contains('6') || pw.contains('7') || pw.contains('8') || pw.contains('9')
          ){
              system.debug('strong password');
          } else {
              system.debug('weak password');
          }
        
        //length of password is even or odd. How to check?
        integer pwl = pw.length();//will return length of pw
        system.debug('password length is ' + pwl);
        
        integer pwlMod = Math.mod(pwl, 2);
        if(pwlMod == 0){
            system.debug('Password length is EVEN');
        } else {
            system.debug('Password length is ODD');
        }
    }
    
    public static void ifElseDemo(){
        integer rank = 16;
        
        string result = '';
        //rank 1 -> gold. rank 2 -> silver, rank 3 -> bronze, rank 4 to 10 -> aluminium, rank 10+ -> Nothing for you.
        //
        if(rank == 1){
            result = 'Gold';
        } else if (rank ==2){
            result = 'Silver';
        } else if(rank ==3)
            result = 'Bronze';
        else if(rank > 4 && rank < 10){
            result = 'Aluminium';
        } else {
            result = 'Nothing for you.';
        }
        system.debug(result);
           
    }
    
     public static void ifElseDemo2(){
        integer rank = 16;
        
        string result = 'Nothing';
        //rank 1 -> gold. rank 2 -> silver, rank 3 -> bronze, rank 4 to 10 -> aluminium, rank 10+ -> Nothing for you.
        //
        if(rank == 1){
            result = 'Gold';
        } else if (rank ==2){
            result = 'Silver';
        } else if(rank ==3){
            result = 'Bronze';
        }
       
        system.debug(result);
           
    }

}