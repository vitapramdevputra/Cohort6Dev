public class ArrayDemo {
   public static void array1(){
      Integer[] numbers = new Integer[5];
      numbers[0] = 12;
      numbers[1] = 32;
      numbers[2] = 35;
      numbers[4] = 50;
      
      System.debug('numbers: ' + numbers);
   }

   public static void array2(){
    Integer[] numbers = new Integer[10];
    for (Integer i = 0; i < 10; i++) {
        numbers[i] = (i+1)*5;
    }
    system.debug(numbers);
   }
   public static void array3(){
        //static declaration means directly adding the values while creating variable.
        Integer[] numbers = new Integer[]{15,25,30,55};
        system.debug('numbers: ' + numbers);
        integer numSize = numbers.size();
        system.debug('size: ' + numSize);
       

        
        string[] fruits = new String[]{'Apple','Banana','Orange','Melon'};
        system.debug('fruits: ' + fruits);
   }
   public static void list1(){
        //we can add ONLY integer values in below list. We cannot add string, boolean, date, decimal, or ANY OTHER datatype. ONLY integers are valid.
        List<Integer> integerList = new List<integer>();
        integerList.add(5); //0
        integerList.add(15); //1
        integerList.add(77); //2
        integerList.add(9); //3
        integerList.add(99);
        //integerList.add('Five'); //we cannot add any other datatype. Only integer. Because the list<integer>
        system.debug('integer list: ' + integerList);


   }
   public static void list2(){
        //SINCE we are creating list of string, we can add ONLY STRING values in this LIST. We cannot add integer, boolean, date, or any other datatype. ONLY STRING is allowed here.
        List<string> cities = new list<string>();
        cities.add('Tokyo');  //0
        cities.add('Lisbon'); //1
        cities.add('Berlin'); //2
        cities.add('Nairobi'); //3
        cities.add('Tokyo'); //4
        cities.add('Lisbon'); //5
        //cities.add(15);//will this work? not work, because we are trying to add integer in list of string.
        cities.add('15'); //will this work?

        system.debug('cities: ' + cities);
        system.debug('city size: ' + cities.size());

        //get city at index 3 in a variable and then print it.
        string cityAt3 = cities[3]; //this is returning string because list is of string.
        system.debug('city at index 3: ' + cityAt3);

        //get city at index 1 in a variable and then print it.
        string cityAt1 = cities.get(1); //.get(index) can be used to get the value at any particular index.
        system.debug('city at index 1: ' + cityAt1);
        
   }
   public static void list3(){
       //create a new list of integers and store it in a variable called numbers
        List<Integer> numbers = new List<Integer>{5,25,30,55}; //if size = 4, maximum index = 3
        Integer[] numbersNew = new List<Integer>{5,25,30,55};

        List<string> fruits = new List<String>{'Apple','Banana','Orange','Melon', 'Mango'}; //size = 5, maximum index = 4
        system.debug('fruits: ' + fruits);

        for (Integer i = 0; i < numbers.size(); i++) {
            system.debug('numbers index: ' + i + ' ==> value: ' + numbers[i]);
        }
        for (Integer i = 0; i < fruits.size(); i++) {
            system.debug('fruits index: ' + i + ' ==> value: ' + fruits[i]);
        }
   }
}