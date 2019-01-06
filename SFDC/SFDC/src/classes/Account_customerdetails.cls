public class Account_customerdetails
{
public static void main(id actid)
{
 // List <Account> 
    Account  act =[Select id,Name from account where id=:actid];
    system.debug(act);
    string Actname =act.Name;
    system.debug(Actname);
    List <Contact> cnt=[Select Id,name from contact where name=:Actname];
    Integer nor=cnt.size();
System.debug(nor);
}
}