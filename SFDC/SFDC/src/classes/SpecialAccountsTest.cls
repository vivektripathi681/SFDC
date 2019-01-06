@isTest
private class SpecialAccountsTest
{
    
  @istest static void createAccount() 
  {
    SpecialAccounts.AccountInfo info = new SpecialAccounts.AccountInfo();
    info.AcctName = 'Manoj Cheenath';
    info.AcctNumber = 12345;
    Account acct = SpecialAccounts.createAccount(info);
    System.assert(acct != null);
      
      
  }
    @istest static void createAccounts()
    {
       // SpecialAccounts.AccountInfo info =new specialAccounts.createAccounts(Account parent, Account child,Account grandChild);
        
        
       // System.assert( act!= null);
    }
}