trigger customerupdate on Customer__c (before insert,before delete)
{
if(trigger.isBefore && trigger.isInsert)
{
    cctax.calculateTax(trigger.new);
    
}
    else
    {
        if(trigger.isBefore && trigger.isDelete)
        {
            cctax.CreateTest(trigger.old);
        }
    }
}