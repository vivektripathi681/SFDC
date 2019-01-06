public class testbillinsert
{
    public static void main(Id custid)
    {
		Customer__c a1= new Customer__c(Email__c='vtri.s1@gh.com');
        Customer__C a2 =[Select Name from customer__C where ID=:custid];
        string sd=a2.name;
        system.debug(sd);
    insert a1;
    }
}