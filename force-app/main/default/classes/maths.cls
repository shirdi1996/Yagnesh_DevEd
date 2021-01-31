public class maths{
	
	integer a =100 ;
	integer b  = 10;
	integer c;
	
	public void sum(Integer a, Integer b){
	 c= a+b;
	 system.debug('sum of a and b is ' + c);
	}

	public void diff(Integer a, Integer b){
	 c= a-b;
	 system.debug('diff of a and b is ' + c);
	}
	
	public void product(Integer a, Integer b){
	 c= a*b;
	 system.debug('product of a and b is ' + c);
	}

	public void quotient(Integer a, Integer b){
	 c= a/b;
	 system.debug('quotient of a and b is ' + c);
	}
}