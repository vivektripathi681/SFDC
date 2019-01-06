public class MyAttachement 
{
 Account acc;
    public string myname{get;set;}
    public MyAttachement()	
    {
        acc=[select id,name from Account where name='alpana' limit 1];
        
    }
    public pagereference show()
    {
        Messaging.SingleEmailMessage mymail=new Messaging.SingleEmailMessage();
        Messaging.EmailFileAttachment EFAtt= new Messaging.EmailFileAttachment();
        pagereference pdf=page.vf65;
        pdf.getParameters().put('id',(string)acc.id);
        pdf.setRedirect(true);
        Blob b=pdf.getContent();
        EFAtt.setFileName('vf65.pdf');
        EFAtt.setBody(b);
        mymail.setSubject('ALPANA');
        string[] toadd= new string[]{'alpanaupadhyay802@gmail.com'};
        //mymail.setToAddresses(List<String> 'alpanaupadhyay802@gmail.com')
        mymail.setToAddresses(toadd);	
        mymail.setPlainTextBody('testing for attachement');
      //  mymail.setBody('Hiiiiiiii');
        mymail.setFileAttachments(new Messaging.EmailFileAttachment[]{EFAtt});
        Messaging.sendEmail(new Messaging.Email[] {mymail});
        return null;
        
        
            
    }
}