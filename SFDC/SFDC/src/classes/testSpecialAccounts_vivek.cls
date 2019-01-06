@istest
private class testSpecialAccounts_vivek 
{
 @istest static void createAccount()
  {
    SpecialAccounts_vivek.AccountInfo info = new SpecialAccounts_vivek.AccountInfo();
    info.AcctName = 'Manoj Cheenathviek';
    info.AcctNumber = 125245;
    Account acct = SpecialAccounts_vivek.createAccount(info);
    System.assert(acct != null);
  }
}