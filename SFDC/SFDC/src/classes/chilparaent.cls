public class chilparaent
{
    public List<Contact> Cont{get;set;}
    public string USERNAME{get;set;}
    public string EnableButton{get;set;}
    public void setUSERNAME(string USERNAME)
    {
        this.USERNAME=USERNAME;
    }
    public   pagereference show()
    {  
    cont= [Select id,name,Account.name,Account.Industry from Contact where name=:USERNAME];    
        return null;
    }
   
   public   pagereference CreateCustomer()
    {  

      return page.SearchCustomer;
       
    }
      public string getEnableButton()
    {
        return EnableButton;
    }
}