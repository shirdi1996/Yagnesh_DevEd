trigger Discount on Moblie__c (Before Insert ,Before Update) {
        discount.disc(Trigger.new);
}