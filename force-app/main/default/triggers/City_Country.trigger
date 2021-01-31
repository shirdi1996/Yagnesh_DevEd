trigger City_Country on Task__c (before insert, before update) {
	ValdnCity.ValdnCntry(trigger.new);
}