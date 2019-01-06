public class insertdynamicsobjectcontrollerse15 
{
    public string ObjectName {get;set;}
    public string RecordName {get;set;}
    public  insertdynamicsobjectcontrollerse15()
    {
        ObjectName='';
         RecordName='';
    }
     public PageReference Save()
     {
         Map <string,schema.SObjectType> gd = Schema.getGlobalDescribe();
         Set<string> objectKeys = gd.keySet();
         if(objectKeys.contains(Objectname.toLowerCase()))
         {
             try
             {
                 sObject sObj=Schema.getGlobalDescribe().get(ObjectName).newSobject();
                 sObj.put('name',RecordName);
                          insert sObj;
                          PageReference pg = new PageReference('/'+sObj.Id);
                          return pg;
             }
                          Catch(Exception e)
                          {
                              ApexPages.addMessages(e);
                              return null;
                          }
         }
                          else
                          {
                              ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR,'object api name is invaild'));
                              return null;
                          }
}
}