global class Create_actWebService  
{
webService static string  makeAccount(String Na) 
{
        String str='Success';
        Account c = new Account(Name = Na);
            insert c;
            return str;
        }

 
 }