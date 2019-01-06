//@isTest
public class InsertBilldetails 
{
 // @future
//@isTest
public static  void main(Id Billid,Id custId,double UsedInternet,double numbersofCall,double numberOfSMS)
{
    test.startTest();
    for(integer i=0;i<1;i++)
    {
    Customer__c Customerob = [Select Id,Plan__c,Email__C From Customer__c where Id=:custId limit 1];
    string s=Customerob.Id;
    string s2=Customerob.Email__c;
    String s3=Customerob.Plan__c;
    system.debug(s3);
    Plan__C Plan1=[select Id,Call_Rate_Minutes__c,Free_Calling_Minutes__c,Free_Internet_MB__c,Free_SMS__c,Internet_Rate__c,Message_Rate_msg__c,Plan_Duration__c,Plan_Number__c,Price__c,Name from Plan__c where Id=:s3];
    system.debug(s);
    system.debug(s2);
    system.debug(s3);
    Double s4=Plan1.Free_SMS__c;
    Double s41=Plan1.Call_Rate_Minutes__c;
    double s42=Plan1.Price__c;
    double s7=Plan1.Internet_Rate__c;
    double s10=plan1.Message_Rate_msg__c;
    system.debug(s4);
    system.debug(s41);
    system.debug(s42);
    system.debug(s7);
      Double charged_for_uses;
    Double Total_charges=00.00;
    double number_of_call_for_charges=00.00;
    double charges_for_net=00.00;
     double sms_for_charges=00.00;
    //calculation of charges -----
    //Get free uses
    double freeminutes = Plan1.Free_Calling_Minutes__c;
    double freeInternet=Plan1.Free_Internet_MB__c;   
    double freesms=Plan1.Free_SMS__c;
    charged_for_uses=0.0;
    //calcualte Difference
    if(freeminutes<numbersofCall)
    {
      number_of_call_for_charges= numbersofCall-freeminutes;
        charged_for_uses=number_of_call_for_charges*s41;
        system.debug('call'+charged_for_uses);
        system.debug(number_of_call_for_charges);
    }
    if(UsedInternet>freeInternet)
    {
      charges_for_net=UsedInternet-freeInternet;
        system.debug(charges_for_net);
        charged_for_uses=charged_for_uses+charges_for_net*s7;
        system.debug('net charges'+charged_for_uses);
    }
    if(numberOfSMS>freesms)
    {
        sms_for_charges=numberOfSMS-freesms;
       charged_for_uses=charged_for_uses+sms_for_charges*s10;
       system.debug(sms_for_charges);
        system.debug('sms'+charged_for_uses);
    }
            Total_charges=s42+ charged_for_uses;
    system.debug(Total_charges);
    date mydate=date.today();
    date mydate1=mydate.toStartOfMonth();
    system.debug(mydate);
    system.debug(mydate1);
test.stopTest();
       bill__c  Billtoupdate;
        Billtoupdate= [Select Call_Chatges__c,SMS_Charges__c from bill__c where Id=:Billid LIMIT 1];
        Billtoupdate.Call_Chatges__c=number_of_call_for_charges*s41;
		Billtoupdate.SMS_Charges__c=sms_for_charges*s4;
        Billtoupdate.Internet_Charges__c=charges_for_net*s7;
        Billtoupdate.Total_Billing__c=Total_charges;
        Billtoupdate.Bill_End_Date__c=mydate;
        Billtoupdate.Bill_Start_Date__c=mydate1;
        update Billtoupdate;

    //test.stopTest();
   
    }
    
    
}
}