trigger Correct_Bill11 on Bill__c (before insert,before update)
{
    /*
   Map<String,Bill__c> getBillNumber=new Map<String,Bill__c>();
   
    for(Bill__c Billob : [SELECT id,Bill_Number__c,Customer__c From Bill__c ])
    {
       for(Customer__c Customerob : [Select Plan__c From Customer__c where Name = :Billob.Customer__c])
     {
       for( Plan__C planob:[Select Name,Plan_Number__c FROM Plan__C where name=:Customerob.Plan__c])
       {
           if(Billob.Bill_End_Date__c!=billob.Bill_Start_Date__c)
           {
            Bill__c A=new Bill__c(Call_Chatges__c=50);   
           }
       }
     }
    }*/ 
}