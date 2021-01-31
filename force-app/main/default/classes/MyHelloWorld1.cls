public class MyHelloWorld1 {
// This method updates the Description field for a list
// of accounts to read "Hello World".
public static void addHelloWorld(list<account> accs){
    for (Account a:accs){
        if (a.Description != 'Hello World')
        a.Description = 'Hello World';
        }
    }
    public static void preventdelete(list<account> acc){
    for(account a : acc){
        if(a.name!=null && a.name == 'BabaTest'){
             a.name.addError('Cannot delete Baba record');
             }
        }
    }
}