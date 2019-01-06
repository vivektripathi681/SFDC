@ istest
private class testInBill 
{

@ istest  static void testabc()
{
    
    //Customer__c a1= new Customer__c(id='asss',Plan__c='abc',Email__c='vtri.s1@gh.com');
   // insert a1;
   // Plan__C Plan1 = new Plan__C(Id='0037F00000snasA',Call_Rate_Minutes__c=123,Free_Calling_Minutes__c=23,Free_Internet_MB__c=99,Free_SMS__c=99,Internet_Rate__c=344,Message_Rate_msg__c=99,Plan_Duration__c=99,Price__c=999,Name='abc' );
   // insert Plan1;
        Id Billid= '0037F00000snZ8A';
    Id custId='0037F00000snZaa';
    integer UsedInternet=344444 ;
       integer numbersofCall=33333 ;
    integer numberOfSMS=23;
Insertthebill.main(custId,UsedInternet,numbersofCall,numberOfSMS);


}
}