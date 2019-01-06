trigger Bittu13 on Account (before insert)
{
for(Account a:trigger.new)
{
    a.name='SFDC'+a.name;
    Contact c=new Contact();
    c.LastName=a.name;
    c.Description=a.name;
    
}
}