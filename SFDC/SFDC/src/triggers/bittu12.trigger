trigger bittu12 on Account (before insert)
{
   for(Account a:trigger.New)
   {
       string a1=a.name;
      string b=a.AccountNumber;
       system.debug(a1);
        system.debug(b);

       
       List<Account> mynew=[select id,Name from Account where name=:a.Name and AccountNumber=:a.AccountNumber];
           if(mynew.size()>0)
       {
           integer d=mynew.size();
           system.debug(d);
           a.Name.addError('account with name is exisisting');
      }
   }
}