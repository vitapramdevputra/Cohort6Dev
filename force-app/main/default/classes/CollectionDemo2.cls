public class CollectionDemo2 {
    public static void list4(){
        list<integer> list1 = new list<integer>{51,33,45,78,98,11,22};
        //list1.add('25');// this will not work because '25' is string.
        boolean check1 = list1.contains(11);
        system.debug('check 1: ' + check1);

        boolean check2 = list1.contains(25);//will this work?  No. 
        system.debug('check 2: ' + check2);

        list<string> list2 = new list<string>();
        list2.add('java');
        list2.add('apex');
        list2.add('python');
        list2.add('php');
        system.debug('list2: ' + list2);

        boolean check3 = list2.contains('apex');
        system.debug('check 3: ' + check3);

        boolean check4 = list2.contains('Apex'); //contains method is case sensitive.
        system.debug('check 4: ' + check4);

    }

    public static void list5(){
        list<integer> list1 = new list<integer>{51,33,45,78,98,11,22};

        list<integer> list2 = new list<integer>{51,33,45,78,98,11,22};

        list<integer> list3 = new list<integer>{78,98,11,22,51,33,45};

        if(list1.equals(list2)){
            system.debug('list 1 and list 2 are exactly same: ' + list1);
        } else {
            system.debug('list 1 and list 2 are different. ');
            system.debug('list1: ' + list1);
            system.debug('list2: ' + list2);
        
        }

        if(list1.equals(list3)){
             system.debug('*list 1 and list 3 are exactly same: ' + list1);
        } else {
            system.debug('*list 1 and list 3 are different. ');
            system.debug('*list1: ' + list1);
            system.debug('*list3: ' + list3);
        }
    }

    public static void list6(){
         list<string> list2 = new list<string>();
        list2.add('java');
        list2.add('apex');
        list2.add('python');
        list2.add('php');
        list2.add('javascript');
        list2.add('c++');
        system.debug('Before sort list2: ' + list2);

        list2.sort();//sort will arrange the elements in ascending order. or alphabetically.

        system.debug('After sort list2: ' + list2);
    }

    public static void list7(){
         list<string> list2 = new list<string>();
        list2.add('java'); //0
        list2.add('apex'); //1
        list2.add('python'); //2
        list2.add('php'); //3
        list2.add('javascript'); //4
        list2.add('c++'); //5
        system.debug('Before remove  list2: ' + list2); 

        //i want to remove php, and I don't know the index number.
        //how to find the index of php and then we use that index number to remove the element?
        integer indexOfPhp = list2.indexOf('php'); //==> 3
        system.debug('index of php is ' + indexOfPhp);
        if(indexOfPhp != -1){
            list2.remove(indexOfPhp);
        }

        system.debug('After remove index 2: ' + list2);



    }

    public static void list8(){
        integer[] num = new integer[5];

        list<integer> num2 = new integer[4];

        list<string> str = new list<string>();

        string[] str2 = new list<string>();
    }

    public static void set1(){
        set<integer> set1 = new set<integer>{11,22,54,87,98,22,54};
        set1.add(32);

        if(!set1.isEmpty()){
            system.debug('set is not empty: ' + set1);
        }

        //clear method will remove all the elements from set
        set1.clear();
         if(!set1.isEmpty()){
            system.debug('set is not empty: ' + set1);
        } else {
            system.debug('Set1 is EMPTY');
        }
    }

    public static void set2(){
        set<integer> set1 = new set<integer>{11,22,54,87,98,22,54};

        set<integer> set2 = new set<integer>{87,98,22,54,11,22,54};

        if(set1.equals(set2)){
            system.debug('set1 and set2 are exactly same. set: ' + set1);
        } else {
            system.debug('set1 and set2 are different.');
        }

    }

    public static void collection1(){
        //addAll is avaiable for LIST and for SET.

        list<string> str1 = new list<string>{'one','two','three','four'};
        list<string> str2 = new list<string>{'eleven', 'twelve', 'thirteen', 'fourteen'};
        str1.add('five');
        //we want to add all the elements of str2 to str1
        str1.addAll(str2); //we can add all the elements from another list or set.
        system.debug('str1 after adding str2: ' + str1);

        set<string> set1 = new set<string>{'A', 'B', 'C', 'D'};
        
        str1.addAll(set1);
        system.debug('str1 after adding set1: ' + str1);
    }

    public static void collection2(){
        set<string> set1 = new set<string>{'A', 'B', 'C', 'D'};
        set<string> set2 = new set<string>{'D', 'E', 'F', 'G'};

        //set1.addAll(set2);
        //system.debug('set1 after adding set2: ' + set1);

        list<string> list1 = new list<string>{'H', 'I', 'J', 'K', 'I', 'J', 'K'};
        system.debug('list1: ' + list1);

        //adding entire list to set1
        set1.addAll(list1);
        system.debug('set1 after adding list1:' + set1);

    }

    public static void map1(){
        //key is integer
        //value is string
        map<integer, string> map1 = new map<integer, string>();
        //to add key-value pair in a map, we use .put method
        map1.put(1, 'one');
        map1.put(2, 'two');
        map1.put(3, 'three');
        map1.put(4, 'four');
        map1.put(11, 'one');
        system.debug('map1: ' + map1); //how many key-value pair is present in this map?
        

    }

    public static void map2(){
        map<string, string> countryCurrencyMap = new map<string, string>();
        countryCurrencyMap.put('USA', 'Dollar');
        countryCurrencyMap.put('UK', 'Pound');
        countryCurrencyMap.put('India', 'Rupees');
        countryCurrencyMap.put('India', 'Rupee');
        countryCurrencyMap.put('Australia', 'Australian Dollar');
        countryCurrencyMap.put('Germany', 'Euro');
        countryCurrencyMap.put('Netherlands', 'Pound');
        countryCurrencyMap.put('El Salvador', 'Bitcoin');
        system.debug('currencyMap: ' + countryCurrencyMap);
    }

    public static void map3(){
        map<string, decimal> pricesMap = new map<string, decimal>{'apple'=>10.99, 'pear'=>8.99, 'orange'=>9.99, 'mango'=>11.99};
        system.debug(pricesMap);

        //all keys
        set<string> allItems = pricesMap.keySet();
        //all values
        list<decimal> allPrices = pricesMap.values();
        system.debug('allItems' + allItems);
        system.debug('allPrices' + allPrices);
        
    }

    public static void map4(){
        //key is string
        //value is list<string>
        map<string, list<string>> map5 = new map<string, list<string>>();

        //manager => employees

        list<string> emp1 = new list<string>{'John', 'Mark', 'Alice'};
        list<string> emp2 = new list<string>{'Jack', 'Matthew', 'Bob'};
        list<string> emp3 = new list<string>{'Jenny', 'Anna', 'Nancy'};

        map5.put('Jerry', emp1);//keyu is string, and value is a list
        map5.put('Elon', emp2);
        map5.put('Jeff', emp3);

        system.debug(map5);

    }

     public static void map5(){
        map<string, string> countryCurrencyMap = new map<string, string>();
        countryCurrencyMap.put('USA', 'Dollar');
        countryCurrencyMap.put('UK', 'Pound');
        countryCurrencyMap.put('India', 'Rupees');
        countryCurrencyMap.put('India', 'Rupee');
        countryCurrencyMap.put('Australia', 'Australian Dollar');
        countryCurrencyMap.put('Germany', 'Euro');
        countryCurrencyMap.put('Netherlands', 'Pound');
        countryCurrencyMap.put('El Salvador', 'Bitcoin');
        system.debug('currencyMap: ' + countryCurrencyMap);

        //get the currency of Germany
        string country = 'Germany';
        string curr = countryCurrencyMap.get(country); //.get(key) is used to get the value from a particular key
        string curr2 = countryCurrencyMap.get('India');
        system.debug(country + ' currency is ' + curr);
        system.debug( 'India currency is ' + curr2);

        //check if Canada is one of the key in the map
        boolean check1 = countryCurrencyMap.containsKey('Canada');
        system.debug('check1: ' + check1);

        //we can get all the keys that is all the countries from the map.
        //to get all the keys we have method called 'KeySet()' => this method returns us 'Set<key_datatype>'
        set<string> allCountries = countryCurrencyMap.keySet(); //why we get set when we try to get all keys. why not list?
        system.debug('all the countries: ' + allCountries);

        //we can get all the values from the map in a list<value_datatype>
        list<string> allCurr = countryCurrencyMap.values();
        system.debug('all the currencies: ' + allCurr);

        //remove method .remove(key)
        countryCurrencyMap.remove('Australia');
        system.debug('country currency map: ' + countryCurrencyMap);
    }
}