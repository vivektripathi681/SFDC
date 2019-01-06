public class SelectExample 
{
    public selectoption[] myoptions{set;get;}
    public selectExample()
    {
        selectoption op1=new selectoption('null','-None-');
            selectoption op2=new selectoption('one','Jan');
        selectoption op3=new selectoption('two','feb');
        myoptions=new selectoption[]{op1,op2,op3};
        
    }
}