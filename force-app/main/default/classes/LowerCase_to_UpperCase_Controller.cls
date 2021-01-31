public with sharing class LowerCase_to_UpperCase_Controller{
   
    public String value { get; set; }
    public String upper { get; set; }
    public String lower { get; set; }  
   

    public PageReference change() {
    upper = value.toUpperCase();
    lower = value.toLowerCase();
    
    return null;
    }    
      
}