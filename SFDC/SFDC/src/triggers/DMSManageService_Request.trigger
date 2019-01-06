trigger DMSManageService_Request on Service_Request__c (after insert)
{
for(Service_Request__C a:Trigger.new)
{
    sTRING DefectArea=a.Defect_Area__c;
    String CustomerId=a.Id;
    system.debug(CustomerId);
    system.debug(DefectArea);
    DMS_Service_Request_Control.main(CustomerId, DefectArea);
}
}