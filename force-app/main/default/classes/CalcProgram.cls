public class CalcProgram {
    public static void calculate(){
        Calc c = new calc();
        c.displayInfo();
        integer sum1 = c.add();
        c.subtract();
        //c.print(55); //why we cannot call print method from here?

        system.debug('--new values set--');
        c.setValues(7, 15);
        c.displayInfo();
        c.add();
        c.subtract();

        system.debug('--new values set--');
        c.setValues(71, 18);
        c.displayInfo();
        c.add();
        c.subtract();
    }
}