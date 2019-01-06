public class pagereferenceshow {
public List<Account> trans{get ; set;}
public pagereferenceshow()
{
    trans=[Select Name,id from account];
        //return null;

}
}