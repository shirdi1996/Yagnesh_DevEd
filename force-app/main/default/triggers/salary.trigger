trigger salary on Job_Application__c (Before Insert, Before Update) {
    SalaryOffer.Exp(Trigger.New);

}