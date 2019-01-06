public class ArrayExample 
{
public string [] myvalue{get;set;}
    public string name{get;set;}
public string ABC{get;set;}
    public ArrayExample()
    {
        name='Tripathi';
        myvalue=new string[]{'VivekG','Alpana'};
           ABC=myvalue[0]+name+myvalue[1]+name; 
    }
}