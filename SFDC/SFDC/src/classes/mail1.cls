public class mail1 
{
public PageReference show()
{
  Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
    string[] toaddress=new string[]{'alpanaupadhyay802@gmail.com'};
        msg.setToAddresses(toaddress);
    string[] tobccaddress=new string[]{'alpanaupadhyay2014@gmail.com','vivek.tripathi68@gmail.com'};
        msg.setBccAddresses(tobccaddress);
    string[] toccaddress=new string[]{'9vivek.tripathi@gmail.com'};
        msg.setCcAddresses(toccaddress);
    msg.setSubject('Test1');
    msg.setPlainTextBody('Hiiiiiiiiiiii');
    msg.setHtmlBody('<h1> Registration11 </h1>');
    Messaging.sendEmail(new Messaging.SingleEmailMessage[]{msg});
    return null;
        
    
}
}