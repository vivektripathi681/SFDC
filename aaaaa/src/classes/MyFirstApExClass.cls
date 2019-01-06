public class MyFirstApExClass 
{
public static void main(string objName,string fieldlist)
//public static void main(integer accName)
//public static void main(string objName)
{
    
// **************************STATIC SOQL*****************************************
List<Account>accList = [select Name,NumberOfEmployees From Account];
    For(Account a:accList)
    {
       system.debug(a); 
    }
   
   //***********************DYNAMIC SOQL**********************************************
    string str='Select Id,';
    str=str+fieldList+' From '+objName;
    List<Sobject> sList=Database.query(str);
    For (Sobject s:sList)
    {
        system.debug(s);
         
    }
                /*
                    Account a = [Select Name from Account where id ='0017F00000QhkGA'];//Returan Type
                
                                 System.debug(a);
                
                
                     Integer i = [Select Count() from Account];
                
                                 System.debug(i);
                      */   
    
    
 //List <BILL__C>
 /*
 aggregateresult  aaaa = [SELECT SUM(Internet_Charges__c)
FROM Bill__c 
WHERE Internet_Charges__c>10];
   system.debug(aaaa); 
 
    //For(aaaa)
   // {
     //      }
     */
    
   /* aggregateresult  aaaa = [SELECT Max(Internet_Charges__c)
FROM Bill__c 
WHERE Internet_Charges__c>10];
   system.debug(aaaa); 
*/
    
   /* aggregateresult  aaaa = [SELECT Min(Internet_Charges__c)
FROM Bill__c 
WHERE Internet_Charges__c>10];
   system.debug(aaaa); 
*/
    //Integer i = [Select count() From Bill__c ];
    //system.debug(i);
    
    //aggregateResult ar = [Select count(Internet_Charges__c ) From Bill__c ];
    //system.debug(ar);
    
    //aggregateResult ar = [Select count_Distinct(Internet_Charges__c ) From Bill__c ];
    //system.debug(ar);
/*
    aggregateresult  aaaa = [SELECT Avg(Internet_Charges__c)
FROM Bill__c 
WHERE Internet_Charges__c>10];
   system.debug(aaaa); 

    String strName= 'John Snow';
    List<Bill__c> billList= [SELECT Name FROM Bill__c WHERE Name = :strName];
    system.debug('John Snow');
    */
    //String accName = 'Billing System Of Communication';
    /*for(Bill__c b:[Select Name,Total_Billing__c	 From Bill__c Where Total_Billing__c = :accName])
    {
        System.debug(b);
    }
    accName=100;
    for(Bill__c c:[Select Name,Total_Billing__c	 From Bill__c Where Total_Billing__c = :accName])
    {
        system.debug('hi1');
       
        System.debug(c);
    }
    for(Bill__c d:[Select Name,Total_Billing__c	 From Bill__c Where Total_Billing__c]
        system.debug('hi');= 100])
    {
        System.debug(d);
    }
*/
    /*
    Set<Id> BillIdSet= new Set<Id>{'a0C7F0000047tYUUAY', 'a0C7F000004egL2UAI'};

List<Bill__c> positionList= [SELECT name FROM Bill__c WHERE Id IN: BillIdSet];
    for(Bill__c d:positionList)
    {
        system.debug('hi');
        System.debug(d);
    }
    */
    /*List<Bill__c> positionList= [SELECT Name FROM Bill__c WHERE Name LIKE 'ee%'];
    for(Bill__c d:positionList)
    {
        System.debug(d);
    }
*/
   //List<Bill__c> positionList= [SELECT name FROM Bill__c WHERE Name LIKE 'a0C7%'AND Total_Billing__c = 100];
    //for(Bill__c d:positionList)
    //{
    //    System.debug(d);
  //  }
//
    //Set <Id> BillIdSet= new Set<Id>{'a0C7F000004egL2', 'a0C7F0000047wQA'};
//List<Bill__c> positionList= [SELECT name FROM Bill__c WHERE Id NOT IN: BillIdSet];
 //   for(Bill__c d:positionList)
   // {
       
     //   System.debug(d);
    //}

   /* 
    List <Bill__c> positionList= [Select Name,Total_Billing__c	 From Bill__c Where Total_Billing__c = 100 ORDER BY Name ASC NULLS LAST];
    for(Bill__c d:positionList)
    {
       
        System.debug(d);
    }
*/
     //List <Bill__c> positionList= [Select Name,Total_Billing__c	 From Bill__c Where Total_Billing__c = 100 ORDER BY Name DESC NULLS FIRST];
    //for(Bill__c d:positionList)
    //{
       
      //  System.debug(d);
    //}
   //List <Bill__c> positionList= [SELECT Name, Total_Billing__c FROM Bill__c WHERE Total_Billing__c = 100 LIMIT 3];
    //for(Bill__c d:positionList)
    //{
       
      //  System.debug(d);
    //}
    
    //List <Bill__c> positionList= [SELECT Name, Total_Billing__c FROM Bill__c WHERE Total_Billing__c = 100 ORDER BY Name DESC LIMIT 2];
//for(Bill__c d:positionList)
  //  {
       
    //    System.debug(d);
    //}
    /*
    List<List<sObject>> results = [FIND 'Uni*'IN NAME FIELDS RETURNING Account];
List <Account> accounts = (List<Account>)results[0];
    for(Account d:accounts)
    {
       
        System.debug(d);
    }
    List<List<sObject>> results1 = [FIND 'Ja*'IN NAME FIELDS RETURNING  Contact];
List <Contact> contacts = (List<Contact>)results1[0];
    for(Contact e:contacts)
    {
       
        System.debug(e);
    }
*/
    
} 
}