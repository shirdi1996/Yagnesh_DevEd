public class CustomerAdd {
    public static void CustomerAddress(List<Invoices__c> newInvoice){
            	Set<ID> CustId = New Set<ID>();
				List<Customer__c> Cust = new List<Customer__c>();
	    	    for(Invoices__c Inv : newInvoice){
     				CustId.add(Inv.Customer_Name__c);
     }
     Map<ID,Customer__c> CustMap = New Map<ID,Customer__c>([SELECT id,ADDRESS__c from 
     Customer__c where ID in :CustId]);
    for(Invoices__c Inv1 : newInvoice){
        Inv1.Address__c=CustMap.get(Inv1.Customer_Name__c).Address__c;
    }
    
    }
}



/*below method not bulkified
    public static void UpdateCustmeradrs(List<Invoices__c> newInvoice)
    {
		Invoices__c firstInvoice  = newInvoice[0];
       Customer__c cst=[SELECT id,ADDRESS__c from Customer__c where ID =:firstInvoice.Customer_Name__c];
        
    }*/