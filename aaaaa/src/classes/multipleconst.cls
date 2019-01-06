public class multipleconst 
{
  integer Rupee;
  integer Paisa;
    public multipleconst ()
    {
      Rupee=0;
        system.debug('hi');
    }
    public multipleconst (integer r1)
    {
      Rupee=r1;
        system.debug('call_email');
    }
     
    public multipleconst (integer r1, integer p)
    {
      Rupee=r1;
      Paisa=p;
        system.debug('email_call');
    }
    public multipleconst(multipleconst m)
    {
      Rupee=m.Rupee;
        Paisa=m.Paisa;
        system.debug(Rupee);
        system.debug(paisa);
    }
    public void showdetails()
    {
      system.debug('rupee'+Rupee);  
        System.debug('paisa'+Paisa);
    }
        
    
}