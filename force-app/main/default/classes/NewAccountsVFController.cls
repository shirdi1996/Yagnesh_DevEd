public class NewAccountsVFController {
    
     public List<Account> getNewAccounts(){
    	List<Account>  Accounts = [select id, Name from Account];
        return Accounts;
    }

}