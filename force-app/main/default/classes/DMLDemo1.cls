public with sharing class DMLDemo1 {
    public static void dml1() {
        //create a new instance of account object
        account acc1 = new account();//creating new instance
        //set field values
        acc1.Name = 'Yoll Company';

        //save means create record
        //INSERT
        insert acc1;
    }

    public static void dml2(){
        Department__c d1 = new department__c();
        d1.name__c = 'Tech Sales';
        d1.Short_Code__c = 'TS';
        d1.Head_Of_Department__c = 'Sama';
        system.debug('before insert ' + d1);
        insert d1;
        system.debug('record inserted ' + d1);

    }

    //how to insert related record?
    public static void dml3(){
        //retrieve the account record
        account acc = [select id from account where name = 'Yoll Company' limit 1];

        contact c1 = new contact();
        c1.firstname = 'Sean';
        c1.lastname = 'Yoll';
        c1.AccountId = acc.Id;
        insert c1;
    }

    public static void dml4(){
        //latest created contact record.
        contact c1 = [select id, name from contact order by createddate desc limit 1];

        c1.Phone = '9879879780';
        c1.email = 'sean@gmail.com';
        c1.Title = 'Developer';
        update c1; //UPDATE DML
    }

     public static void dml5wrong(){
        //retrieve the account record
        account acc = [select id from account where name = 'Yoll Company' limit 1];

        contact c1 = new contact();
        c1.firstname = 'Diora';
        c1.lastname = 'Yoll';
        c1.AccountId = acc.Id;
        insert c1;

        contact c2 = new contact();
        c2.firstname = 'Zahir';
        c2.lastname = 'Yoll';
        c2.AccountId = acc.Id;
        insert c2;

        contact c3 = new contact();
        c3.firstname = 'Sara';
        c3.lastname = 'Yoll';
        c3.AccountId = acc.Id;
        insert c3;
    }

     public static void dml5right(){
        //retrieve the account record
        account acc = [select id from account where name = 'Yoll Company' limit 1];

        List<contact> listContacts = new List<contact>();

        contact c1 = new contact();
        c1.firstname = 'Diora1';
        c1.lastname = 'Yoll';
        c1.AccountId = acc.Id;
        listContacts.add(c1);

        contact c2 = new contact();
        c2.firstname = 'Zahir1';
        c2.lastname = 'Yoll';
        c2.AccountId = acc.Id;
        listContacts.add(c2);

        contact c3 = new contact();
        c3.firstname = 'Sara1';
        c3.lastname = 'Yoll';
        c3.AccountId = acc.Id;
        listContacts.add(c3);

        contact c4 = new contact();
        c4.firstname = 'Sean';
        c4.lastname = 'Yoll';
        c4.AccountId = acc.Id;
        listContacts.add(c4);

        //insert the entire LIST to do a bulk operation
        insert listContacts;
    }

    public static void dml6(){
        List<contact> yollContacts = [select id, name, firstname from contact where account.name = 'Yoll Company'];

        
        for(contact eachContact : yollContacts){
            eachContact.email = eachContact.firstname + '@gmail.com';
            eachContact.Title = 'SF Developer';
        }

        //update dml
        update yollContacts;
    }

    public static void dml7Error() {
                
        Account a1 = new account(); //name is mandatory and we are NOT passing name, so it will fail.
        account a2 = new account(name = 'acc1');
        account a3 = new account(name = 'acc12');

        list<account> listAcc = new list<account>{a1, a2, a3};
        insert listAcc; //trying to insert 3 records. 2 has correct details. 1 has error. How many records will be inserted?
    }

      public static void dml7Right() {
                
        Account a1 = new account(); //name is mandatory and we are NOT passing name, so it will fail.
        account a2 = new account(name = 'acc1');
        account a3 = new account(name = 'acc12');

        list<account> listAcc = new list<account>{a1, a2, a3};
        
        //allOrNothing = true -- means it will either insert ALL the records or NONE of the records.
        //Database.insert(listAcc, true); //similar to insert listAcc; -> even if 1 record has error, other records will NOT be inserted.

        //allOrNothing = false -- means it will insert good records and skip the bad ones (bad means any exception such as required field is missing, etc)
        Database.insert(listAcc, false); //if 1 record has error - ONLY THAT will NOT be inserted. All others will be inserted.
        
    }
}