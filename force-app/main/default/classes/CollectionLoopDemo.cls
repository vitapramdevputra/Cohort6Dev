public class CollectionLoopDemo {
    public static void listLoop1(){
        list<integer> intList = new list<integer>{10,15,48,32,55,90, 102,111};

        //print each value from the list
        for(integer eachValue: intList){
            system.debug(eachValue);
        }
    }
    public static void listLoop2(){
        list<integer> intList = new list<integer>{10,15,48,32,55,90, 102,111};

        //print each value from the list
        for(integer eachValue: intList){
            //print the value only if it is divisible by 5, and add the total
            integer remainder5 = math.mod(eachValue,5);
            if(remainder5 == 0){
                system.debug(eachValue);
            }
            
        }
    }

    public static void listLoop3(){
        list<string> nameList = new list<string>();
        nameList.add('Tom');
        nameList.add('Jerry');
        nameList.add('Bob');
        nameList.add('Mary');
        nameList.add('Maggie');

        for (string eachName : nameList) {
            string upperCaseName = eachName.toUpperCase();
            system.debug(upperCaseName);
        }
    }

    public static void setLoop1(){
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

        for (String eachCity : cities) {
            system.debug(eachCity);
        }
   }

   public static void setLoop2(){
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

        //Tokyo || Lisbon || Berlin
        system.debug('city set: ' + cities);

        string allCities = '';
        for (String eachCity : cities) {
            allCities += eachCity + ' || ';
            System.debug('all cities: ' + allCities);
        }
        system.debug('** all cities: ' + allCities);
        system.debug('--- all cities: ' + allCities.removeEnd(' || '));
   }

   public static void setLoop3(){
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

        //convert each city to uppercase and add them to a new set.

        set<string> newCitySet = new set<string>();

       for (string eachCity : cities) {

            string tempStr = eachCity.toUppercase();//we just used the method .toUpperCase()
            system.debug('tempStr: ' + tempStr);
            newCitySet.add(tempStr);
       }

       system.debug('old city set: ' + cities);
       system.debug('new city set: ' + newCitySet);

   }

   public static void listLoop4(){
    list<string> nameList = new list<string>();
        nameList.add('Tom');
        nameList.add('Jerry');
        nameList.add('Bob');
        nameList.add('Mary');
        nameList.add('Maggie');

        for (String eachName : nameList) {
            nameList.add('Lucy'); //trying to add a value to nameList inside the for each loop.
            system.debug(eachName);
        }

   }

    public static void mapLoop1(){
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


        //how do to foreach loop for map?

       

        string country = 'Germany';
        //how to get the currency of a particular country from countryCurrencyMap?
        string curr = countryCurrencyMap.get(country);

        //first we get all the keys from the map
        set<string> allKeys = countryCurrencyMap.keySet();
        //now we will iterate over the keys. 
        for (string eachCountry : allKeys) {
            system.debug('country is ' + eachCountry);
            //how to get the currency from the keys?
            string curr1 = countryCurrencyMap.get(eachCountry);
            system.debug('country ' + eachCountry + ', currency is ' + curr1);
        }

    }

     public static void mapLoop2(){
        map<string, decimal> pricesMap = new map<string, decimal>{'apple'=>10.99, 'pear'=>8.99, 'orange'=>9.99, 'mango'=>11.99, 'banana'=>11.99, 'pineapple'=>15.99, 'grape'=> 9.99};
        
        system.debug(pricesMap);

        //prepare two new maps. higherMap, lowerMap.
            //if the price is more than 10 then put that item - price in higherMap.
            //if the price is less than 10 then put that item - price in lowerMap.
        
        map<string, decimal> higherPriceMap = new map<string, decimal>();
        map<string, decimal> lowerPriceMap = new map<string, decimal>();
        //iterating each fruit of the map
        for (String eachFruit : pricesMap.keySet()) {
            decimal eachFruitPrice = pricesMap.get(eachFruit);
            if(eachFruitPrice > 10){
                system.debug('add in higherMap: ' + eachFruit + ', ' + eachFruitPrice);
                higherPriceMap.put(eachFruit, eachFruitPrice);
            } else{
                system.debug('add in lowerMap: ' + eachFruit + ', ' + eachFruitPrice);
                lowerPriceMap.put(eachFruit, eachFruitPrice);
            }
        }

        system.debug('** Higher Map: ' + higherPriceMap);
        system.debug('** Lower Map: ' + lowerPriceMap);
    }


}