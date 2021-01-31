trigger helloWorldAccountTrigger on Account
(before insert, before delete, before update) {
if(trigger.isinsert){
MyHelloWorld1.addHelloWorld(Trigger.new);
}if(trigger.isDelete ){
   MyHelloWorld1.preventdelete(trigger.old);
    }
 /*   if(trigger.isUpdate){
    // Query the accounts to lock
Account[] accts = [SELECT Id from Account WHERE Name like 'Bab%'];
// Lock the accounts
Approval.LockResult[] lrList = Approval.lock(accts, false);

// Iterate through each returned result
for(Approval.LockResult lr : lrList) {
    if (lr.isSuccess()) {
        // Operation was successful, so get the ID of the record that was processed
        System.debug('Successfully locked account with ID: ' + lr.getId());
    }
    else {
        // Operation failed, so get all errors                
        for(Database.Error err : lr.getErrors()) {
            System.debug('The following error has occurred.');                    
            System.debug(err.getStatusCode() + ': ' + err.getMessage());
            System.debug('Account fields that affected this error: ' + err.getFields());
        }
    }
}
    }*/
}