//Null pointer exception
String str;
system.debug(str.toUpperCase()); //cannot do any operation on NULL.

List<string> listStr = new list<string>{ 'apple', 'mango', 'chikoo'};
//what will be maximum index for the above list?
system.debug(listStr.get(5));//trying to get the value at index 5. What will happen? ListException.


//query exception
account acc = [select id, name from account]; //this query returns bulk records (more than 1)

//DMLException
account ac = new account();
insert ac;