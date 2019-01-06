public class SetExample 
{
    public set <string> name{get;set;}
    public SetExample()
    {
        name=new set<string>();
        name.add('one');
        name.add('Ram');
        name.add('two');
        name.add('sita');
    }
}