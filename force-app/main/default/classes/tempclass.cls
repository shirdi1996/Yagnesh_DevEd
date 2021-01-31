public class tempclass {
    public static void ins(){
        List<Acount__c> AcList = [SELECT id,name__c from Acount__c where name__c like 'Gana%'];
                delete AcList;
    }
}