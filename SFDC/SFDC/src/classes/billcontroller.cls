public class billcontroller 
{
 @AuraEnabled
    public static List<Bill__c> getBill()
    {
        List<Bill__c> opportunities = 
                [SELECT Id,Name,Bill_Start_Date__c, Bill_End_Date__c FROM Bill__c  limit 10];
        return opportunities;
    }

   // @AuraEnabled
   // public static Opportunity getOpportunity(Id id) {
       // Opportunity opportunity = [
                //SELECT Id, Account.Name, Name, CloseDate, 
                       //Owner.Name, Amount, Description, StageName
            //FROM Opportunity
            //WHERE Id = :id
        // ];

        // Perform isAccessible() check here 
        //return opportunity;
   // }
//
}