public class controllerextensionexample {
    private account acctvar;
    public string message {get;set;}
    public string AccName {get;set;}
    
    public controllerextensionexample (apexpages.StandardController stdcontroller){
        acctvar=(Account) stdcontroller.getRecord();
        }
    public void showGreeting(){
        message = 'Welcome to Controller extension Demo';
        }
    public void mysave() {
        Account Acc = New Account();
        Acc.Name= AccName;
        Acc.Industry='Chemical';
        insert Acc;
            
    }
}