public class Example5 
{
    public string USERNAME{get;set;}
    public String testname;
    
    public string getUSERNAME()
    {
        return USERNAME;
    }
public void setUSERNAME(string USERNAME)
{
    this.USERNAME=USERNAME;
}
    public pagereference show()
    {
        List<Contact> Con=new List<contact>();
        for(Contact c:Con)
        {
            c.Description='mamta'+USERNAME;
            Con.add(c);
            system.debug(USERNAME);
        }
                insert Con;
        USERNAME='mamta'+ USERNAME;
        return null;
    }
 }