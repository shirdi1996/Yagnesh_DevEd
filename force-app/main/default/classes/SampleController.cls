public class SampleController
{
    //Wrapper class variable
    public Wrapper obj {get;set;}
     
    //Constructor
    public SampleController(){
        obj = new Wrapper();
        obj.name = 'Biswajeet';
    }
     
    //Wrapper class
    public class Wrapper
    {
        public String name {get;set;}
    }
}