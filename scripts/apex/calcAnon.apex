CalcProgram.calculate();

Calc c = new Calc();//new instance of the class
c.displayInfo();
c.add();

system.debug('--new values set--');
c.setValues(7, 15);
c.displayInfo();
c.add();

system.debug('--new values set--');
c.setValues(17, 115);
c.displayInfo();
c.add();

system.debug('--new values set--');
c.setValues(17, 17);
c.displayInfo();
c.add();

