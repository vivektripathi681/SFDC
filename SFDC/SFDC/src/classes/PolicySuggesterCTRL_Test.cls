@isTest
public class PolicySuggesterCTRL_Test {
public static void init(){
//creating the policy data
Policy__c policy = new Policy__c(Name = 'test', Age__c = 50, Occupation__c = 'Artist' );
Policy__c policy1 = new Policy__c(Name = 'test 2', Any_Pre_Existing_Medical_Condition__c = true, Occupation__c = 'Student' );
Policy__c policy2 = new Policy__c(Name = 'test 3', Pre_Existing_Medical_Condition__c = 'Asthma', Married__c = true );
Policy__c policy3 = new Policy__c(Name = 'test 4', Age__c = 38, Occupation__c = 'Unemployed' ,Number_of_Dependents__c = 2);
List<Policy__c> listPolicies = new List<Policy__c>();
listPolicies.add(policy);
listPolicies.add(policy1);
listPolicies.add(policy2);
listPolicies.add(policy3);
//Insert the object virtually
insert listPolicies;
}
static testMethod void testPolicy_Case1(){
init();
// Set the Current page
PageReference pageref = new PageReference('/apex/Policy_Advisor_Page');
test.setCurrentPage(pageref);
//Create a new instance of Customer Information with age greater than 40
Customer_Information__c customer = new Customer_Information__c();
customer.Name = 'Test Name';
customer.Email__c = 'test@gmail.com';
customer.Age__c = 47;
customer.Married__c = true;
customer.Number_of_Dependents__c = 2;
customer.Occupation__c = 'Artist';
customer.Any_Pre_Existing_Medical_Condition__c = true;
customer.Pre_Existing_Medical_Condition__c = 'Asthma';
Test.startTest();
//Create a new instance of standard controller
ApexPages.StandardController sc = new ApexPages.standardController(customer);
PolicySuggestCTRL controller = new PolicySuggestCTRL(sc);
controller.customer = customer;
controller.save();
Test.stopTest();
}
static testMethod void testPolicy_Case2(){
init();
// Set the Current page
PageReference pageref = new PageReference('/apex/Policy_Advisor_Page');
test.setCurrentPage(pageref);
//Create a new instance of Customer Information with age Less than 40
Customer_Information__c customerSec = new Customer_Information__c();
customerSec.Name = 'Test Name';
customerSec.Email__c = 'test@gmail.com';
customerSec.Age__c = 38;
customerSec.Married__c = true;
customerSec.Number_of_Dependents__c = 2;
customerSec.Occupation__c = 'Unemployed';
customerSec.Any_Pre_Existing_Medical_Condition__c = true;
customerSec.Pre_Existing_Medical_Condition__c = 'Asthma';
Test.startTest();
//Create a new instance of standard controller
ApexPages.StandardController sc2 = new ApexPages.standardController(customerSec);
PolicySuggestCTRL controller2 = new PolicySuggestCTRL(sc2);
controller2.customer = customersec;
controller2.save();
Test.stopTest();
}
}