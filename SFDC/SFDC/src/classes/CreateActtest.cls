@isTest
private class CreateActtest
{
 @istest static void testcreateAccountvivek()
  {
      
      CreateAct.AccountInfo info =new CreateAct.AccountInfo();
      info.AcctName = 'Manoj Cheenath';
      info.AcctNumber = 12345;
      Account acct = CreateAct.createAccountvivek(info);
      System.assert(acct != null);
      
  
}
}