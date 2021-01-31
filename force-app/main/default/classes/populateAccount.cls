public class populateAccount{
    
    //protected override void beforeUpdate(){
    public static void populateAccount(){
    Id recordtypeId = Schema.Sobjecttype.Case.getRecordTypeInfosByName().get('Web to Case').getRecordTypeId();

    
    if((Trigger.IsBefore) && ((Trigger.IsInsert)||(Trigger.IsUpdate))){
   
    List<Decimal> num = New List<Decimal>();
    map<decimal,id> amap = new map<decimal,id>();
    for(Case c: (List<Case>) Trigger.New){
    if(c.RecordTypeId ==recordtypeId  && c.Number__c !=NULL){
    num.add(c.number__c);
    }
    }
    List<Account> a1 = [SELECT Id, Number__c from Account where Number__c in : num];
    if(a1.size()>0){
    for(Account a:a1){
    if(a.number__c >0){
    amap.put(a.number__c,a.Id);
    }
    }
    } 
    for(case ca : (List<Case>) Trigger.New){
        if(ca.number__c!=NULL){
            if(ca.account == NULL){
                //Case c =New Case();
  				ca.AccountId = amap.get(ca.number__c);
    			ca.type='Mechanical';
    			ca.Product__c ='GC3060';
    			ca.Origin = 'Web';
                //c.add(ca);
    }
    }
    }
    }
	}
	}