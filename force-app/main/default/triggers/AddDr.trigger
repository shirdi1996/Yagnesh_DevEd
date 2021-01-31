trigger AddDr on Acount__c (after insert, after update) {

   public static void prefix(){List<Acount__c> acc = new List<Acount__c>();
    for(Acount__c acc1 :acc){
        if(acc1.Technology_Known__c == 'Salesforce'	){
            acc1.Name__c = 'Dr. ' + acc1.Name__c;
        }
    }
}
}