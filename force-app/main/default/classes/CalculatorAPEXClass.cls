public class CalculatorAPEXClass {

 //variable declaration at class level
    private integer Sum; 
    private integer Multiplication; 
 
 //function for sum
    public integer MakeSum(integer NumA, integer NumB) {

  Sum = NumA + NumB;
  return Sum;
    }
 
 //function for multiplication
 public void MakeMultiply(integer NumC, integer NumD) {
 
  Multiplication = NumC * NumD;
  system.debug('The answer = ' + Multiplication  );

    }
 
}