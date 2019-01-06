public class Accccop 
{
    public List <Account> acc {get;set;}
    public pageReference show()
    {
 acc=[select Name,phone,(select AssistantName,Assistantphone from contacts where Account.id='0017F00000QhkG9QAJ'),(select Name,Amount from Opportunities where Account.Id='0017F00000QhkG9QAJ') from Account where id='0017F00000QhkG9QAJ'];
        return null;
    }
}