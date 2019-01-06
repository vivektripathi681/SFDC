public class alp_exception_handling 
{
    public static void main()
    {
        //*************************DMLException******************************
        
try
{
Bill__c pos = new Bill__C();
// Causes an QueryException because
// we are inserting record without required fields
insert pos;
} 

        catch(Exception e)
{
    
System.debug('Exception type caught: '+ e.getTypeName());
System.debug('Message: '+ e.getMessage());
System.debug('Cause: '+ e.getCause()); // returns null
System.debug('Line number: '+ e.getLineNumber());
System.debug('Stack trace: '+ e.getStackTraceString());
}
finally
{

}
     
   
   // *************************ListException*******************************
    /*
 try
{
List <String> stringList = new List<String>();
stringList.add('John');
// This list contains only one element,
// but we're attempting to access the second element
// from this zero-based list.
String str1 = stringList[0]; //this will execute fine
String str2 = stringList[1]; // Causes a ListException
} 
//catch(ListException le) 
//{
//System.debug('The following exception has occurred: '+ le.getMessage());
//
Finally
{
            
 }
     */ 
        //**************************NullPointer Exception********************************
        /*
try
{
String stringVariable;
Boolean boolVariable= stringVariable.contains('John'); // Causesa NullPointerException
} 
catch (NullPointerException npe)
{
System.debug('The following exception has occurred:'+ npe.getMessage());
}
Finally
{
          
}
  */  
        //********************************QueryException******************************
      /*  
try
{
// This statement doesn't cause an exception,
// if we don't have a
// The list will just be empty.
List <Bill__c> positionList = [SELECT Name FROM Bill__c WHERE Name='eee'];
// positionList.size() is 0
System.debug(positionList.size());
// However, thisstatementcausesa QueryExceptionbecause
// we'reassigingthequeryresulttoa Position sObjectvaraible
// but noPosition recordisfound
Bill__c pos= [SELECT Name FROM Bill__c WHERE Name='SalesforceDeveloper'LIMIT 1];
}
catch(QueryException ge) 
{
System.debug('The following exception has occurred: '+ ge.getMessage());
}
Finally
{
    
}
 */
       // *****************************Generic Exception Type****************
   /*         
try
{
// This statement doesn't cause an exception,
// if we don't have a
// The list will just be empty.
List <Bill__c> positionList = [SELECT Name FROM Bill__c WHERE Name='eee11qz12'];
// positionList.size() is 0
System.debug(positionList.size());
// However, thisstatementcausesa QueryExceptionbecause
// we'reassigingthequeryresulttoa Position sObjectvaraible
// but noPosition recordisfound
Bill__c pos= [SELECT Name FROM Bill__c WHERe Name='eee11qz12eee'LIMIT 1];
} 
catch (Exception ex)
{
System.debug('The followingexceptionhasoccurred: '+ ex.getMessage());
}
Finally
{
            
}
*/
       
    //*******************************Common Exception Methods*******************
    /*
try
{
Bill__c pos = new Bill__c ();
// Causes an QueryException because
// we are inserting record without required fields
insert pos;
} 
catch (Exception e)
{
System.debug('Exception type caught: '+ e.getTypeName());
System.debug('Message: '+ e.getMessage());
System.debug('Cause: '+ e.getCause()); // returns null
System.debug('Line number: '+ e.getLineNumber());
System.debug('Stack trace: '+ e.getStackTraceString());
}
FinaLLy
{
}
  */
       // *********************How to Catch Different Exception Types****************
  /*
try
{
Bill__c pos = new Bill__c();
// Causes an QueryException because
// we are inserting record without required fields
insert pos;
} 
catch (DmlException e) 
{
System.debug('QueryException caught: '+ e.getMessage());
} 
catch(QueryException e) 
{
System.debug('DML Exception caught: '+ e.getMessage());
} 
catch(Exception e) 
{
System.debug('Exception caught: '+ e.getMessage());
}
Finally
{
                 
}
*/
}
}


//******************************Custom Defined Exception—Example*******************************
/*
public class Bill Utility 
{
public static void main Processing() 
{
try
{
insert Bill Method ();
} 
catch(BillException be) 
{
System.debug('Message: '+ be.getMessage());
System.debug('Cause: '+ be.getCause());
System.debug('Line number: '+ be.getLineNumber());
System.debug('Stack trace: '+ be.getStackTraceString());
}
}
public static void insert Bill Method() 
{
try
{
// Insert Position record without required fields
Bill__c pos = new Bill__c();
insert pos;
}
catch(DmlExceptione) 
{
// SincePosition recordisbeinginsert
// withoutrequiredfields, DMLExceptionoccurs
throw new BillException('Position recordcouldnot beinserted.', e);
}
}
}
*/