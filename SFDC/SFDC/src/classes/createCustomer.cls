public class createCustomer
{
    public string FirstName{get;set;}
    public string LastName{get;set;}
    public string Address{get;set;}
    public string PhoneNumber{get;set;}
       public string result{get;set;}
        public void setFirstName(string FirstName)
    {
        this.FirstName=FirstName;
      //  return null;
    }


    public void setLastNameLastName(string LastName)
    {
        this.LastName=LastName;
       // return null;
    }
    public void setAddress(string Address)
    {
        this.Address=Address;
       // return null;
    }
    public void setPhoneNumber(string PhoneNumber)
    {
        this.PhoneNumber=PhoneNumber;
        //return null;
    }    
    public pagereference show()
    {
        Account a=new Account();
        a.Name=FirstName;
         //a.ShippingAddress=Address;
         a.Phone=PhoneNumber;
        insert a;
string result =a.id;
            //[Select Name,id,ShippingAddress,Phone from Account where Name=''];
     return null;   
    }
    public   pagereference CreateCustomer()
	{  

	return page.Sendemail_age;//refering a new page

	}
}