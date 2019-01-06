public class AccountSearch
{

	public List<Account> Acc{get;set;}
	public string USERNAME{get;set;}
	public boolean EnableButton{get;set;}
	public void setUSERNAME(string USERNAME)
		{
		this.USERNAME=USERNAME;
		}
	public   pagereference show()
		{  
		EnableButton=false;
		Acc= [Select id,AccountNumber,name,Industry from Account where AccountNumber=:USERNAME];    

			if(Acc.size()>0)
			{
			EnableButton=true;
			}
		return null;
		}

	public   pagereference CreateCustomer()
	{  

	return page.SearchCustomer;//refering a new page

	}
	
}