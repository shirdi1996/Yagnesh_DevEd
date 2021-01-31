trigger CustAdd on Invoices__c (before insert, before update) {
	CustomerAdd.CustomerAddress(trigger.new);
}