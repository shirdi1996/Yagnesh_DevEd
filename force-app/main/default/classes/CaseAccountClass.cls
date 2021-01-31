public class CaseAccountClass {
    public static void ctest(){
    Map<String,Id> amap = new map<string,id>();
    List<Account> a1 = [Select id, name from account where name = 'Sai Baba'  limit 1];
            if(a1.size()>0){
                for(account a: a1){
                    if(a.name=='RamaKrishna'){
  					amap.put(a.name,a.Id);             
                     }
                }}
        for(Case c: (List<Case>)Trigger.New){
            if(c.subject == 'Patel'){
                c.accountid =amap.get(c.subject);
            }
        }
    }
    }