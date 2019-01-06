trigger Correct_Bill on Bill__c (after insert)
{

//Bill__c Billob = [SELECT Bill_Number__c, Customer__c, Number__c, Number_of_SMS_alert__c, Amount_of_Internet_Used__c from Bill__c];
   
 // for(Bill__c Billob : [SELECT id,Name,Bill_Number__c,Customer__c,Number__c,Number_of_SMS_alert__c,Amount_of_Internet_Used__c From Bill__c])
 
   /*
        id CustId=Billob.Customer__c;
        Double UsedInternet=Billob.Amount_of_Internet_Used__c;
        double numbersofCall=Billob.Number__c;
         double numberOfSMS=Billob.Number_of_SMS_alert__c;  

    
        string supdate='N';
         if(trigger.isInsert)
        {
          for(Bill__c a:Trigger.new)
            {
            //Bill__c a:Trigger.new;
         id CustId=a.Customer__c;
        Double UsedInternet=a.Amount_of_Internet_Used__c;
        double numbersofCall=a.Number__c;
         double numberOfSMS=a.Number_of_SMS_alert__c;  
       // string supdate='N';
                system.debug('custid'+CustId);
                system.debug(UsedInternet);
                 InsertBilldetails.main(CustId,UsedInternet,numbersofCall,numberOfSMS) ;
            }
        } 
    /*
      if(trigger.isUpdate)
      {
          supdate='Y';
          InsertBilldetails.main(CustId,UsedInternet,numbersofCall,numberOfSMS,supdate) ; 
          
      }
*/
    
}