public class PositionExtension 
{
private final Account pos;
// The extensionconstructorinitializestheprivate member
// variable posbyusingthegetRecordmethodfromthestandard
// controller.
public PositionExtension(ApexPages.StandardController stdController)
 {
this.pos= (Account)stdController.getRecord();
}
public String getPositionSalary() 
{
return pos.name+ ' positionhasmaximumsalary';
}
}