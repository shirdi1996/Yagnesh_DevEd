public class RegisteredStudentList {
  // wrapper list
   public list<stdWrapper> stdListWrapper{get;set;}
    
    //constructor
    public RegisteredStudentList(){
    
    // query for student ( inner query for registration(course)  and Fee
        list<student__c> stdList=[select id,name,City__c,Date_Of_Birth__c,(select id,course__r.Fees__c,course__r.Name from Registrations__r),(select id,Amount__c from Fees__r) from student__c where Total_Course__c>0];
        
        // wrapper all value
        stdListWrapper= new List<stdWrapper>();
        double pd=0, payb=0, rem=0;
        
        // courses string
        string courseDet='[ ';
        for(student__c std:stdList){
            stdWrapper stw= new stdWrapper();
            for(Registration__c reg: std.Registrations__r){
                //payable amount
                payb +=reg.course__r.Fees__c;
                // courses string
               courseDet+=reg.course__r.Name +'--> Rs.'+reg.course__r.Fees__c+', ';
                }
                courseDet= courseDet.removeEnd(', ');
                courseDet+=' ]';
            
             //paid fees   
            for(Fee__c fe: std.Fees__r)
                pd += fe.Amount__c;
            
            // remaining
            rem=payb-pd;
            stw.stud=std;
            stw.payable=payb;
            stw.paid=pd;
            stw.remain=rem;
            stw.crsDet=courseDet;
            // adding this wrapper into list
            stdListWrapper.add(stw);
        }
    }
    // wrapper class
    public class stdWrapper{
        public student__c stud{get;set;}
        public string crsDet{get;set;}
        public double payable{get;set;}
        public double paid{get;set;}
        public double remain{get;set;}
    }
    // code s'f 
}

/*
 
public class RegStuList {
    
  // wrapper list
   public list<stdWrapper> stdListWrapper{get;set;}
    
    //constructor
    public RegStuList(){
    
    // query for student ( inner query for registration(course)  and Fee
        list<student__c> stdList=[select id,name,City__c,Date_Of_Birth__c,(select id,course__r.Fees__c,course__r.Name from Registrations__r) from student__c where Total_Course__c>0];
        set<id> stdSet= new set<id>();
        Map<id, double> stdPaidMap= new Map<id, double>();
        for(student__c std:stdList)
            stdSet.add(std.id);

         for(AggregateResult agR: [SELECT student__c, sum(Amount__c) totalfee FROM Fees__c where student__c IN:stdSet GROUP BY student__c])
                stdPaidMap.put(string.valueOf(agR.get('student__c')), Double.valueOf(agR.get('totalfee')));
          
        // wrapper all value
        stdListWrapper= new List<stdWrapper>();
        
        for(student__c std:stdList){
        double pd=0, payb=0, rem=0;
       
            stdWrapper stw= new stdWrapper();
             // courses string
        string courseDet='[ ';
        
            for(Registration__c reg: std.Registrations__r){
                //payable amount
                payb +=reg.course__r.Fees__c;
                // courses string
                courseDet+=reg.course__r.Name+' --> '+reg.course__r.Fees__c+', ';
                }
            courseDet= courseDet.removeEnd(', ');
            courseDet+=' ]';
                
            if(stdPaidMap.containsKey(std.id))
                pd=stdPaidMap.get(std.id);

            // remaining
            rem=payb-pd;
            
            stw.stud=std;
            stw.payable=payb;
            stw.paid=pd;
            stw.remain=rem;
            stw.crsdt=courseDet;
            
            // adding this wrapper into list
            stdListWrapper.add(stw);
                
        }  
    }
    // wrapper class
    public class stdWrapper{
        public student__c stud{get;set;}
       // public string crsDet{get;set;}
       public string crsdt {get;set;} 
        public double payable{get;set;}
        public double paid{get;set;}
        public double remain{get;set;}
       
    }
}*/