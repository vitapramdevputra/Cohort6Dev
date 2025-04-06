//static variable belongs to class.
Employee.companyName = 'Yoll';

Employee.printCompanyName();

Employee e0 = new Employee();
e0.displayInfo();

Employee e1 = new Employee();
e1.name = 'Jerry';
e1.gender = 'male';
e1.displayInfo();

//we cannot assign static variable  using instance
//e1.companyName = 'wrong';

system.debug('----------');
Employee e2 = new Employee();
e2.name = 'Elaine';
e2.gender = 'female';
e2.displayInfo();
system.debug('----------');

Employee e3 = new Employee();
e3.name = 'George';
e3.gender = 'male';
e3.displayInfo();

system.debug('----company change------');
Employee.companyName = 'Salesforce';

e1.displayInfo();
e2.displayInfo();
e3.displayInfo();


Employee e4 = new Employee();
e4.displayInfo();
system.debug('-----');
Employee e5 = new Employee('Kramer', 'male', 1995);




//short string
string a = 'abc';

//lengthy string
string z = 'Returns an abbreviated version of the String, of the specified length and with ellipses appended if the current String is longer than the specified length; otherwise, returns the original String without ellipses.abbreviate(maxWidth, offsetReturns an abbreviated version of the String, starting at the specified character offset and of the specified length. The returned String has ellipses appended at the start and the end if characters have been removed at these locations.capitalize()Returns the current String with the first letter changed to title case.';



//heap size (run time memory)

//list<string> => 10 elements
//list<string> ==> 10000 elements