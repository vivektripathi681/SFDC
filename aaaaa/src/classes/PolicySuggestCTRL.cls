public with sharing class PolicySuggestCTRL {
    //Create the variables
public Customer_Information__c customer{get; set;}
public List<Policy__c> allPolicies{get; set;}
Set<Id> suggestedPoliciesIdSet;
public List<Policy__c> suggestedPolicies{get; set;}
public boolean renderEdit {get; set;}
public boolean renderDetail {get; set;}
List<Customer_Information__c> selectedCustomerList;
public Customer_Information__c selectedCustomer{get; set;}
//Standard controller constructor
public PolicySuggestCTRL(ApexPages.StandardController controller){
selectedCustomerList = new List<Customer_Information__c>();
suggestedPoliciesIdSet = new Set<Id>();
customer = new Customer_Information__c();
suggestedPolicies = new List<Policy__c>();
renderEdit = true;
renderDetail = false;
}
//Defining the Save method
public  void save(){
//Check if customer record is not empty
if(customer != null){
//Check if the customer has any pre existing medical conditions
if(customer.Pre_Existing_Medical_Condition__c != null){
customer.Any_Pre_Existing_Medical_Condition__c = true;
//Insert customer record
insert customer;
}
//Fetch all policies
allPolicies = [SELECT Id, Age__c, Pre_Existing_Medical_Condition__c, Any_Pre_Existing_Medical_Condition__c, Number_of_Dependents__c,
Married__c,Name,Occupation__c FROM Policy__c];
//Iterate through all the policies
for(Policy__c policy: allPolicies){
//Check the customer’s age
if(policy.Age__c <> null && policy.Age__c > 40){
if(customer.Age__c <> null && customer.Age__c > 40 ){
suggestedPoliciesIdSet.add(policy.Id);
}
}
else if(policy.Age__c <> null && policy.Age__c < 40){
if(customer.Age__c <> null && customer.Age__c < 40 ){
suggestedPoliciesIdSet.add(policy.Id);
}
}
//Check the customer’s medical condition
if((policy.Any_Pre_Existing_Medical_Condition__c == true) && (customer.Any_Pre_Existing_Medical_Condition__c == true)){
if(policy.Name == 'Medical Cover'){
suggestedPoliciesIdSet.add(policy.Id);
}
//Check pre-existing medical conditions
if((policy.Pre_Existing_Medical_Condition__c <> null) && (policy.Pre_Existing_Medical_Condition__c == customer.Pre_Existing_Medical_Condition__c)){
suggestedPoliciesIdSet.add(policy.Id);
}
}
//Check the number of dependents
if(policy.Number_of_Dependents__c <> null){
if(customer.Number_of_Dependents__c <> null){
suggestedPoliciesIdSet.add(policy.Id);
}
}
//Check whether customer is married
if(policy.Married__c == true && customer.Married__c == true){
suggestedPoliciesIdSet.add(policy.Id);
}
}//end of for loop
//query the customer just inserted
selectedCustomerList = [SELECT Age__c,Any_Pre_Existing_Medical_Condition__c,Email__c,Pre_Existing_Medical_Condition__c,Id,Married__c,Name,Number_of_Dependents__c,Occupation__c,Phone__c FROM Customer_Information__c WHERE Id =:customer.Id LIMIT 1];
//if the customer list is not empty
if(!selectedCustomerList.isEmpty()){
//assign the customer to the customer information get set variable
selectedCustomer = selectedCustomerList[0];
//Check the suggested policy list and render the different section
if(!suggestedPoliciesIdSet.isEmpty()){
suggestedPolicies = [SELECT Name FROM Policy__c where Id IN : suggestedPoliciesIdSet];
}
renderEdit = false;
renderDetail = true;
}
}
}//End of save method
}//End of Class