public class DynamicTableControllerse9 
{
//list displayed on ui
    public list<selectoption> supportedObject {get;set;}
    //Selected Object
    public string SelectedObject {get;set;}
    //global describe
    map<string,Schema.SObjectType> gd = Schema.getGlobalDescribe();
    set<string> objectKeys = gd.keySet();
    //field select list
    public list<SelectOption> fieldLabelAPI{get;set;}
    //selected fields to be displayed in table
    public list<string> SelectdFields{get;set;}
    //list to maintain dynamic query result
    public list<sObject> ObjectList {get;set;}
    //constructor
    public DynamicTableControllerse9()
    {
        //initialize
        supportedObject = new list<selectoption>();
        SelectedObject='';
        fieldLabelAPI = new list<SelectOption>();
        SelectdFields = new list<string>();
        ObjectList = new list<sObject>();
        //get only reference to objects
        for(schema.SObjectType item:ProcessInstance.TargetObjectId.getDescribe().getReferenceTo())
            {
             //excluding custom setting objects
             if(!item.getDescribe().CustomSetting)
             {
                 //Adding to list
                supportedObject.add(new SelectOption(item.getDescribe().getLocalName().toLowerCase(),item.getDescribe().getLabel()));
                 
             }
            }
    }
    //get field of selected object
    public void ObjectFields()
    {
        if(SelectedObject!='--none--')
        {
            //creating sobject for dynamic selected object
            Schema.SObjectType systemObjectType=gd.get(SelectedObject);
                //fetching fields result
                Schema.DescribeSObjectResult r = systemObjectType.getDescribe();
            map<string,Schema.SObjectField> M = r.fields.getMap();
            //creating picklist of fields
            for(schema.SObjectField fieldAPI:M.values())
            {
               fieldLabelAPI.add(new selectOption (fieldAPI.getDescribe().getName(),fieldAPI.getDescribe().getLabel()));
            }
        }
    }
    
public void ShowTable()
{
    //creating ynamic query with selected field
    string myQuery = 'select Id';
    for(string field :SelectdFields)
    {
        if(field.toLowerCase()!='id'&& field.toLowerCase()!='--none--')
            myQuery+=', '+field+'';
    }
    //limit is 100 for now you can chang it according to need
    myQuery+=' '+'from'+' '+SelectedObject;//+' '+'LIMIT 100';
//executing the query    
            
    ObjectList=Database.query(myQuery);
    system.debug(myQuery);
}
    
        
    
    
}