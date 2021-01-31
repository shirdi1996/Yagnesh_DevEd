public with sharing class Custom {
    public string name {set; get;}
    public string message {set;get;}
    
    public void showmessage(){
        message='Welcome Dear : ' + name; 
        name=null;
    }
}