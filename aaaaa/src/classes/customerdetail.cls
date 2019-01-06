public class customerdetail 
{
    
    public static void detail()
        
    {
        id custid='a067F000005yKlV';
        customer__c Cust = [Select id, Name, Address__c, Email__c, Phone__c from Customer__c where id = :custid];
        string s1 = cust.id;
        string s2 = cust.Name;
        string s3 = cust.Address__c;
        string s4 = cust.Email__c;
        string s5 = cust.Phone__c;
        system.debug(s1);
        system.debug(s2);
        system.debug(s3);
        system.debug(s4);
        system.debug(s5);
        
        
    }
        
}