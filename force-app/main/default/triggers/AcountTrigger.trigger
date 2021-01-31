trigger AcountTrigger on Acount__c (before update) {
    for(Acount__c a : Trigger.New){
        if(a.Experience__c != a.Experience1__c){
            ApexPages.Message errMsg = new ApexPages.Message(ApexPages.Severity.Warning,  'Any changes made to the quote will not flow to Magnys');
ApexPages.addMessage(errMsg);
            
        }
        
        
        
    }
}