trigger Correct_Bill1 on Bill__c (after insert)
{
for(Bill__c a:Trigger.new)
{
    id CustId=a.Customer__c;
    Id Billid=a.Id;
    
   Double UsedInternet=a.Amount_of_Internet_Used__c;
    double numbersofCall=a.Number__c;
   double numberOfSMS=a.Number_of_SMS_alert__c;  
   InsertBilldetails.main(Billid,CustId,UsedInternet,numbersofCall,numberOfSMS) ;
    system.debug(CustId);
    system.debug(UsedInternet);
    system.debug(numbersofCall);
    system.debug(numberOfSMS);
    
}
}