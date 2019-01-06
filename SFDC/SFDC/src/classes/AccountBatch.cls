global class AccountBatch implements Database.Batchable<sobject>
{
    global Database.QueryLocator Start(Database.BatchableContext BC)
    {
        String query='select id,Name from ACCOUNT limt=10';
        return Database.getQueryLocator(query);
    }
global void execute (Database.BatchableContext BC,List<Account>scope)
{
List <Account> acc=new List<Account>();
for(Account a:acc)
{
    a.name='MP'+a.name;
    acc.add(a);
}
    update acc;
}
    global void finish(DataBase.Batchablecontext BC)
    {
        
    }
}