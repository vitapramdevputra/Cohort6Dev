public class DMLDemo2 {
   public static void dmlUpdateWRONG() {

        //SOQL query always returns list<SOBJECT>
        List<account> listAcc = [select id, name from account order by createddate desc];
        //update description field in all these accounts.
        for (account eachAcc : listAcc) {
            eachAcc.Description = 'acc updated on 4 May 2025.';
            update eachAcc; //DML //WHY THIS IS WRONG?
            //
        }
   }

   public static void dmlUpdateRight() {
        //SOQL query always returns list<SOBJECT>
        List<account> listAcc = [select id, name from account order by createddate desc];
        //update description field in all these accounts.
        for (account eachAcc : listAcc) {
            eachAcc.Description = 'acc updated on 4 May 2025.';
        }
        update listAcc;
   }

   public static void dmlDatabaseInsert() {
        Account a1 = new account(); //name is mandatory and we are NOT passing name, so it will fail.
        account a2 = new account(name = 'toy1');
        account a3 = new account(name = 'toy2');
        Account a11 = new account(); //name is mandatory and we are NOT passing name, so it will fail.
        account a12 = new account(name = 'toy3');
        account a13 = new account(name = 'toy5');

        list<account> listAcc = new list<account>{a1, a2, a3};
        
        //database.insert method return Database.SaveResult
        List<Database.SaveResult> results = Database.insert(listAcc, false);
        for (Database.SaveResult eachResult : results) {
            if(eachResult.isSuccess()){
                system.debug('SUCCESS. inserted record id = ' + eachResult.getId());
            }else{
                //operation failed
                system.debug('ERROR. insert failed: Errors: ' + eachResult.getErrors());
            }
        }
   }
}