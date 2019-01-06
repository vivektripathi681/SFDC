public class AccountListController
{
// ApexPages.StandardSetController must be instantiated
// for standard list controllers
public ApexPages.StandardSetController setPos {
get{
if(setPos== null) {
setPos= new ApexPages.StandardSetController(Database.getQueryLocator(
[SELECT Name, ID FROM Account]));
}
return setPos;
}set;
}
// Initialize setConandreturna listofrecords
public List <Account> getAccount() 
{
return(List<Account>) setPos.getRecords();
}
}