public With Sharing class simpleserversidecontroller 
{
@Auraenabled
    public static string serverEcho(string firstName)
    {
        return('Hello from the server'+firstName);
    }
}