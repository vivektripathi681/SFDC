public class SExample1
{
    public set <string> name{get;set;}
    public boolean test{get;set;}
    public SExample1()
    {
        List <string> mylist=new List <string>();
        mylist.add('a1');
        mylist.add('a2');
        mylist.add('a3');
        mylist.add('a4');
        name=new set <string>();
        name.add('one');
        name.add('two');
        name.add('three');
        name.add('four');
        name.add('five');
        name.addall(mylist);
       //test=name.retainAll(mylist); 
        
        
    }
    
}