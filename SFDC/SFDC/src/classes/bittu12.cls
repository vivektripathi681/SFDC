@isTest
public class bittu12 
{
Public static testmethod void testinsert()
{
    string addError;
    string myname='mamta';
    Account a2=new Account(name=myname);
    List<Account> x=[select name from Account where name=:myname];
    if(x.size()<1)
    {
       system.assertEquals(0,x.size());
        insert a2;
    }
    else
    {
        addError='Exisisting';
        
    }
    system.assertEquals('Exisisting', addError);
}
}