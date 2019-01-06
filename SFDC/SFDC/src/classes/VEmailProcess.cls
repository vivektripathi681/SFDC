global class VEmailProcess implements Messaging.InboundEmailHandler 
{
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope)
    {
          Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
                
      String myPlainText= '';
    
    string emailaddress=email.fromAddress;
    
    myPlainText = email.plainTextBody;
        Task[] newTask = new Task[0];
        try 
        {
          Contact vCon = [SELECT Id, Name, Email
        FROM Contact
        WHERE Email = :emailaddress
        LIMIT 1];
        system.debug(myPlainText);
            system.debug(emailaddress);
      
           newTask.add(new Task(Description =  myPlainText,
           Priority = 'Normal',
           Status = 'Inbound Email',
           Subject = email.subject,
           IsReminderSet = true,
           ReminderDateTime = System.now()+1,
           WhoId =  vCon.Id));
     
     // Insert the new Task 
        insert newTask;    
     
        System.debug('New Task Object: ' + newTask );
            if(email.textAttachments != null)

        {

            // Save attachments, if any

            for (Messaging.Inboundemail.TextAttachment tAttachment : email.textAttachments) {

              Attachment attachment = new Attachment();

              
              attachment.Name = tAttachment.fileName;

              attachment.Body = Blob.valueOf(tAttachment.body);

            //  attachment.ParentId = account.Id;

              insert attachment;

            }

        }

        if(email.binaryAttachments != null)

        {

            for (Messaging.Inboundemail.BinaryAttachment bAttachment : email.binaryAttachments) {

              Attachment attachment = new Attachment();

              

              attachment.Name = bAttachment.fileName;

              attachment.Body = bAttachment.body;

              //attachment.ParentId = account.Id;

              insert attachment;

            }

        }

        }
        
        catch (QueryException e)
        {
            System.debug('Query Issue: ' + e);
        }
        finally
        {
            
        }
          return result;
    }
}