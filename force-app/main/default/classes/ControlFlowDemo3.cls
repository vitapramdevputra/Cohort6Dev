public class ControlFlowDemo3 {
    public static void breakDemo(){
        integer printed = 0;
        for(integer i = 11; i < 100; i++){
            system.debug('**SOL');
            //we only want to print 10 even numbers
            integer remainder = Math.mod(i, 2);
            //even number check
            if(remainder == 0){
                system.debug(i);
                printed++;
                if(printed == 10){
                    break;
                }
            }
            system.debug('$$EOL');
        }
        system.debug('exited the loop');
    }
    
    public static void checkpoint2(){
        for(integer i = 1; i <= 10; i++){
            
            if(i == 5){
                break;
            }
           system.debug(i);
        }
    }
    
    public static void continueDemo(){
        for(integer i = 1; i < 10; i++){
            if(i == 5 || i == 7){
                continue;//skip this iteration right here. Move to the next iteration.
            }
            
            system.debug('** SOL **');
            
            system.debug(i);
            system.debug('---------');
        }
    }
    
    public static void checkpoint3(){
        for(integer i = 1; i <= 10; ++i){
            
            if(i > 4 && i < 9){
                continue;
            }
            system.debug(i);
        }
    }
}