public class GetAccount 
{
    public string Name {get;set;}
    public string BillingStreet {get;set;}
    public string BillingCity {get;set;}
    public string BillingPostalCode {get;set;}
    public string address {get;set;}
    public string BillingState{get;set;}
    ApexPages.StandardController sc;
    public void GetAccount(ApexPages.StandardController sc)
    {
        String Name;
        String BillingStreet;String BillingCity;String BillingPostalCode;String Address;
        Name='IBM India Private Limited G1 Block';
        BillingStreet='';
        BillingCity='Bengaluru';
        BillingPostalCode='73301';
        Address='Manyata Embassy Business Park (MEBP), Thanisandra, Bengaluru, Karnataka 560045';
        BillingState='Karnataka';
       this.Name=Name;
        this.BillingStreet=BillingStreet;
        this.BillingCity=BillingCity;
        this.BillingPostalCode=BillingPostalCode;
        this.Address=Address;
        this.BillingState=BillingState;
        Account a=new Account();
        return;
    }
    
}