public class AExample1 
{
 public Account[] myvalue{get;set;}
    public string name{get;set;}
    public AExample1()
        {
       Account a1=new Account(name='Alpana', industry='Teaching'); 
           Account a2=new Account(name='VivekG', industry='IT');
            Account a3=new Account(name='Ram', industry='banking');
            myvalue=new Account[]{a1,a2,a3};

        }
}