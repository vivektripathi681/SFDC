public class utilclassse10
{
public static String VFPagecode(string PageName)
{
    ApexPage testpage = new ApexPage();
    string pagetext='';
    if(PageName!='')
    {
        testpage=[select id,markup from ApexPage where name=:PageName];
        pagetext=testpage.markup;
    }
    return pagetext;
                                    
}

}