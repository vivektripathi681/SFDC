global class cctax 
{
    global static void calculateTax(Customer__c[] cust)
    {
        for(Customer__c c:cust)
        {
            if(c.Salery__c<500000)
            {
                c.IncomeTax__c=c.Salery__c*0.10;
            }
            else
            {
             c.IncomeTax__c=c.Salery__c*0.20;   
            }
        }
    }
    global static void CreateTest (Customer__c[] cust)   
    {
        List <Test__c> test=new list <Test__c>();
        for(Customer__c c:cust)
        {
           Test__c t=new Test__c(salary__c=c.Salery__c);
               Test.add(t);
        }
        insert Test;
    }

}