public class Send_Email_mass
{
public void SendEmail()
{
 List<contact> lstcon=[Select id from contact limit 2];
 List<Id> lstids= new List<Id>();
 for(Contact c:lstcon)
 {
  lstids.add(c.id);
 }
 EmailTemplate et=[Select id from EmailTemplate where name = 'EmailTemplatename' limit 1];
 
 Messaging.MassEmailMessage mail = new Messaging.MassEmailMessage();
 mail.setTargetObjectIds(lstIds);
 mail.setSenderDisplayName('System Admin');
 mail.setTemplateId(et.id);
 Messaging.sendEmail(new Messaging.MassEmailMessage[] { mail });
}
}