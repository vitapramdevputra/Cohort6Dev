Car2 c2 = new car2();
// we can get the value of public class variables. (see the value or assign to some other variable)
system.debug('* c2 name = ' + c2.name);
system.debug('* c2 launchYear = ' + c2.launchYear);
integer yyy = c2.launchYear;
//system.debug('* c2 maxSpeed = ' + c2.maxSpeed);
c2.displayInfo();

//we can also set the values of public class variables.
//we can assign the value directly to class variables
c2.name = 'Ford F1';
c2.launchYear = 30012;
c2.displayInfo();


Car2 c3 = new car2();
c3.name = 'Honda City';
c3.launchYear = 1990;
c3.displayInfo();