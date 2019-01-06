public class MyFirstDML 
{
    public static void main()
        
    {
        //****************DML Standalone Statements*****************
  
        /*
List <Account> accounts = new List <Account>();
    
for(Integer i=0; i<2; i++)
{
Account acc= new Account();
acc.Name= 'Alpana'+i;
accounts.add(acc);
}
insert accounts;
  
        */
        
       // ******************DML Database Methods***************
   /*     
  List <Account> accounts = new List <Account>();
for(Integer i=0; i<3; i++)
{
Account acc= new Account();
acc.Name= 'Vivekg'+i;
accounts.add(acc);
}
Database.insert(accounts);
     */   
        
       // ***************Inserting and Updating Records******************************
   /*      
 List <Account> accountsToInsert = new List<Account>();
Account accountToUpdate;
for(Integer i=0; i<3; i++)
{
Account acc= new Account(Name = 'Alpana', BillingCity= 'New York');
accountsToInsert.add(acc);
}
Database.insert(accountsToInsert);
accountToUpdate= [Select BillingCity FROM Account WHERE Name = 'Alpana'LIMIT 1];
accountToUpdate.BillingCity= 'San Francisco';
Database.update(accountToUpdate);
Account afterUpdate= [Select BillingCity FROM Account WHERE Id = :accountToUpdate.Id];
System.assertEquals(afterUpdate.BillingCity, 'San Francisco');
*/
        
        //**********************Upserting Records************************
  /*     
 List <Account> accountsList = [SELECT Id, Name, BillingCity FROM Account WHERE BillingCity = 'San Francisco'];
for(Account acc : accountsList)
{
acc.BillingCity = 'Las Vegas';
}
Account newAccount = new Account(Name = 'bittu', BillingCity = 'Palo Alto');
accountsList.add(newAccount);
upsert accountsList;
  */
        //******************************SaveResultMethod***************************
        /*
        // Create two Contacts, one of which is missing the required LastName field
List <Contact> contacts = new List <Contact> {new Contact(LastName='Contact2'), new Contact()};
List <Database.SaveResult> srList = Database.insert(contacts, false);
// Iterate through each returned result
for(Database.SaveResult sr : srList) 
{
if(sr.isSuccess())
{
// Operation was successful, so get the ID of the record that was processed
System.debug('Successfully inserted Contact. Contact ID: '+ sr.getId());
}
else
{
// Operation failed, so get all errors
for(Database.Error err : sr.getErrors())
{
System.debug('The following error has occurred.');
System.debug(err.getStatusCode() + ': '+ err.getMessage());
System.debug('Contact fields that affected this error: '+ err.getFields());
}
}
}
*/
        //***************************Savepoint and Rollback****************
   /*
 Account acc = new Account (Name = 'Alpana'); insert acc;
System.assertEquals(null, [SELECT AccountNumber FROM Account WHERE Id = :acc.Id].AccountNumber);
// Create a savepointwhileAccountNumberisnull
Savepoint sp= Database.setSavepoint();
// Change theaccountnumber
acc.AccountNumber= '123';
update acc;
System.assertEquals('123', [SELECT AccountNumber FROM Account WHERE Id= :acc.Id].AccountNumber);
// Rollback tothepreviousnull value
Database.rollback(sp);
System.assertEquals(null, [SELECT AccountNumber FROM Account WHERE Id= :acc.Id]. AccountNumber);
*/
        //*************************Considerations While Using Savepoints and Rollbacks************************
        /*
        Account a = new Account (Name = 'xxx'); insert a;
System.assertEquals(null, [SELECT AccountNumber FROM Account WHERE Id = :a.Id].AccountNumber);
        System.debug(a.Id);
// Create a savepointwhileAccountNumberisnull
Savepoint savepoint1 = Database.setSavepoint();
        System.debug(savepoint1);
// Change theaccountnumber
a.AccountNumber= '123';
update a;
Savepoint savepoint2 = Database.setSavepoint();
        System.debug(savepoint2);
a.AccountNumber= '123';
update a;
System.assertEquals('123', [SELECT AccountNumber FROM Account WHERE Id= :a.Id].AccountNumber);
// Rollback tothepreviousnull value
Database.rollback(savepoint1);
System.assertEquals(null, [SELECT AccountNumber FROM Account WHERE Id= :a.Id]. AccountNumber);
        */
        
        List <Account> accounts = new List <Account>();
         FOR(Account cand : [Select Id, Name FROM Account])
         {
cand.Name ='Alpana' ;
   System.debug('Alpana');
Database.update(cand);
}

}
}