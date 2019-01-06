public class BillUtility 
{
public static void mainProcessing() 
{
try
{
	insertBillMethod();
} 
catch(Exception be) 
{
System.debug('Message: '+ be.getMessage());
System.debug('Cause: '+ be.getCause());
System.debug('Line number: '+ be.getLineNumber());
System.debug('Stack trace: '+ be.getStackTraceString());
}
}
public static void insertBillMethod() 
{
try
{
// Insert Position record without required fields
Bill__c pos = new Bill__c();
insert pos;
} 
catch(DMLException e) 
{
// SincePosition recordisbeinginsert
// withoutrequiredfields, DMLExceptionoccurs
throw new DMLException('Position recordcouldnot beinserted.', e);
}
}
}