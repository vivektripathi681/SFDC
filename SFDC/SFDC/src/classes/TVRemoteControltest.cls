@istest
private class TVRemoteControltest 
{
@istest static void testvolumeincrease()
{
    test.startTest();
  TVRemoteControl1 rc = new TVRemoteControl1(10);
    integer newvolume = rc.increasevolume(60);
    system.assertEquals(60,newvolume); 
    test.stopTest();
}
    @istest static void testvolumedecrease()
    {
        TVRemoteControl1 rc = new TVRemoteControl1(20);
    integer newvolume = rc.decreasevolume(-1);
    system.assertEquals(-1,newvolume); 
    }
    @istest static void testvolumedecreaseundermin()
    {
        TVRemoteControl1 rc = new TVRemoteControl1(10);
    integer newvolume = rc.decreasevolume(100);
    system.assertEquals(0,newvolume); 
        
    }
    @istest static void testgetmenuoptions()
    {
        //static method call,no record to create a class instance
        string menu=TVRemoteControl1.getmenuoptions();
        system.assertNotEquals(null,menu);
        //system.ass
        //system.assertEquals('',menu);
    }
}