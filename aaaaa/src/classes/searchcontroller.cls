public class searchcontroller 
{
    string searchtext;
   List <Account> results=new List <Account> ();
    
    public searchcontroller()
    {
      system.debug('constructor');  
    }
    public string getsearchtext()
    {
      system.debug('getsearchtext');  
        return searchtext;
    }
     public void setsearchtext(string S)
     {
         system.debug('setsearchtext');
         searchtext=S;
     }
      public List <Account> getResults()
      {
        system.debug('getResults'); 
          return Results;
      }
        public void dosearch()
            {
                system.debug('dosearch method');
                results =(List<Account>)[Find:searchtext RETURNING Account(Name,Id)][0];
                    //[select Name from Account]);
                
            }
}