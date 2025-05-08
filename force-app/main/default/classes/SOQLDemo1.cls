public class SOQLDemo1 {
   public static void soql1(){
       List<account> allAcc = [Select id, name from account];
       system.debug(allAcc);

       list<contact> allContacts = [select id, firstname, lastname, email from contact];
       system.debug('all contacts ' + allContacts);
       

       List<employee__c> allEmp = [select id, first_name__c, last_name__c, salary__c from employee__c];
       system.debug('all emp: ' + allEmp);
       
      }

      public static void soql2(){

        account acc1 = [select id, name, phone, accountnumber from account limit 1];//limit 1 returns JUST 1 record. 
        system.debug('acc name: ' + acc1.Name);
        system.debug('acc phone: ' + acc1.Phone);
        system.debug('acc account number: ' +acc1.AccountNumber);
        system.debug('acc id: ' +acc1.Id);
      }

      public static void soql3(){
        List<employee__c> allEmp = [select id, first_name__c, last_name__c, salary__c from employee__c];
        system.debug('all emp: ' + allEmp);
        
        //for each loop on LIST
        for(employee__c eachEmp: allEmp){
            system.debug('-----start----');
            system.debug('emp name: ' + eachEmp.first_name__c + ' ' + eachEmp.last_name__c);
            system.debug('salary: ' + eachEmp.salary__c);
        }

      }

      public static void soql4(){
        List<employee__c> allEmp = [select id, first_name__c, last_name__c, salary__c, department__r.name__c from employee__c];
        system.debug('all emp: ' + allEmp);
        
        //for each loop on LIST
        for(employee__c eachEmp: allEmp){
            system.debug('-----start----');
            system.debug('emp name: ' + eachEmp.first_name__c + ' ' + eachEmp.last_name__c);
            system.debug('salary: ' + eachEmp.salary__c);
            system.debug('department name: ' + eachEmp.department__r.name__c);//value of parents field
        }

      }

      public static void soql5(){
        //get all department and all its employees
        list<department__c> allDep = [select name__c, (select first_name__c, last_name__c, country__c from employees__r) from department__c];
        for (department__c eachDep : allDep) {
            system.debug('---start---');
            system.debug('dep name: ' + eachDep.name__c);
            List<employee__c> empList = eachDep.employees__r; //this will return list<employee__c> inside each department.
            for(employee__c eachEmp: empList){
                system.debug('-------emp name: ' + eachEmp.first_name__c + ' ' + eachEmp.last_name__c);
                system.debug('------ country: ' + eachEmp.country__c);
            }
        }
      }

      public static void soql6(string stage){
        list<opportunity> opps = [select id, name, account.name, amount, stagename from opportunity where stagename = :stage];
        for (Opportunity eachOpp : opps) {
            system.debug('opp name: ' + eachOpp.Name + ' ' + eachOpp.Account.Name);
            system.debug('opp stagename: ' + eachOpp.StageName);
            system.debug('opp amount: ' + eachOpp.amount);
            system.debug('-------');
        }
      }

      public static void soql7(){
        //what do we mean by limit 10? 
        list<account> listAcc = [select name, website, Active__c from account limit 10];
        for (Account eachAcc : listAcc) {
          system.debug('eachAcc name: ' + eachAcc.Name);
            system.debug('eachAcc website: ' + eachAcc.Website);
            system.debug('eachAcc active: ' + eachAcc.Active__c); //if we are using the field, then we MUST query it.

        }
      }

}