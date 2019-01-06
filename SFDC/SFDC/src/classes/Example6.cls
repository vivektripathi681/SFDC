public class Example6 
{
    public integer avalue{get;set;}
    public integer bvalue{get;set;}
    public integer result{get;set;}
    public string operation{get;set;}
    public pagereference sub()
    {
        result = avalue-bvalue;
        operation = 'SUBTRACTION';
        return null;
    }
    public pagereference add()
    {
     result = avalue+bvalue;
     operation = 'ADDITION';
      return null;   
    }
}