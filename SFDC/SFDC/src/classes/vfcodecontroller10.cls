public class vfcodecontroller10 
{
    public boolean showcodesection{get;set;}
    public string pagetext{get;set;}
public string CurrentPageName{get;set;}
    public vfcodecontroller10()
    {
    CurrentPageName='';
        showcodesection=false;
    }
    public PageReference DisplayCode()
    {
        if(CurrentPageName!='')
        {
            pagetext=utilclassse10.VFpageCode(CurrentPageName);
            showcodesection=true;
}
        return null;
    }
}