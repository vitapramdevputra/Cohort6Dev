public  class CollectionDemo1 {
   public static void set1(){
    //we cannot add duplicate values in Set.
    //there are no indexes in set.
    //no order in set.
    //so no 0,1,2,3 - NOTHING.
    set<integer> set1 = new set<integer>();
    
    set1.add(25);
    set1.add(33);
    set1.add(55);
    set1.add(55);
    set1.add(55);
    set1.add(55);
    set1.add(15);
    set1.add(15);
    set1.add(15);
    set1.add(15);
    set1.add(2);

    system.debug(set1);
    system.debug('size of set1: ' + set1.size());
   }

   public static void set2(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('TOKyo');

        system.debug('city set: ' + cities);
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
        
        integer lisbonCityIndex = cities.indexOf('Lisbon');//return first occurance of this element in the list
        system.debug('index of Lisbon: ' + lisbonCityIndex);
        
        integer tokyoCityIndex = cities.indexOf('TOKYO');//return first occurance of this element in the list
        system.debug('index of Tokyo: ' + tokyoCityIndex);
   }

   public static void list3(){
        list<integer> numbers = new list<integer>{5,45,88,99,4,45};
        //isEmpty() return true if list is empty. else it returns false.

        if(!numbers.isEmpty()){
            system.debug('this is not empty: ' + numbers);
        }else{
            system.debug('this is empty');
        }


        //clear
        numbers.clear();

        if(!numbers.isEmpty()){
            system.debug('*list is not empty: ' + numbers);
        }else{
            system.debug('*list is empty');
        }

   }


}