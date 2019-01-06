public class piechart11 
{
public List <PieWedgeData11> getPieData()
{
    List<PieWedgeData11> data = new List <PieWedgeData11>();
    data.add(new PieWedgeData11('jan',30));
    data.add(new PieWedgeData11('feb',15));
    data.add(new PieWedgeData11('mar',11));
    data.add(new PieWedgeData11('apr',20));
    data.add(new PieWedgeData11('May',20));
    data.add(new PieWedgeData11('June',20));
    data.add(new PieWedgeData11('July',10));
    return data;
    
}
    //WrapperClass
    public class PieWedgeData11 
{
    public string name {get;set;}
    public integer data {get;set;}
    
    public PieWedgeData11 (string name,integer data)
    {
        this.name=name;
        this.data=data;
    }
}
}