public class casehand {
 /*   public static void casehand(){
    if ((Trigger.IsBefore) && ((Trigger.IsInsert)||(Trigger.IsUpdate))){
    list<string> acc = new List<string>();
    list<id> ids = new list<id>();
    list<string> name1 = new list<string>();
    
    	for(case c: (List<Case>) Trigger.New){
    		if(c.test__c!= null || c.test__c !=''){
                acc.add(c.test__c);
            }
        }
    if(acc.size()>0){
    
    List<account> a =[select id, name from Account where name in : acc];
        for(Account a1:a){
            if(a1.Name!=null || a1.Name !=''){
                name1.add(a1.Name);
            }
        }
        
        for(case c1 : (List<Case>) Trigger.New){
        	if(name1!=acc)
                c1.test__c.addError('Enter Name ');
             
        	}
        }
    }
}*/
}