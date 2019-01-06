/*trigger checkact on Account (before insert) 
{
for(Account a:Trigger.new)
{
    sTRING CustId=a.Name;
    String Billid=a.Id;
    system.debug(CustId);
    system.debug(Billid);
}
}
*/

trigger checkact on Account (after insert) 
{
for(Account a:Trigger.new)
{
    sTRING CustId=a.Name;
    String Billid=a.Id;
    system.debug(CustId);
    system.debug(Billid);
}
}