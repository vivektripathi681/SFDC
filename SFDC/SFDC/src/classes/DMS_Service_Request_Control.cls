public class DMS_Service_Request_Control
{
    @future
Public Static Void main( Id CustomerId,String DefectArea)
{
    Team__C Team=[Select Name,Team_Mail_ID__c from Team__c where technical_Area__c=:DefectArea];
    string Teamname=Team.Name;
    string TeamId=Team.Team_Mail_ID__c;
    Service_Request__c sr=[Select Assigne_Email__c,Assigned__c from Service_Request__c where ID=:CustomerId];
    sr.Assigned__c=Teamname;
    sr.Assigne_Email__c=TeamId;
    update sr;
}
}