public class discount{
    public static void disc(list<Moblie__c> NewDiscount){
        for(Moblie__c Dis :NewDiscount){
            if (Dis.Brand__c=='Apple'){
                 Dis.Price__c= (Dis.Price__c - (Dis.Price__c*25/100));}
            {
            if (Dis.Brand__c=='LG'){
                 Dis.Price__c= (Dis.Price__c - (Dis.Price__c*10/100));}
        }
        {
            if (Dis.Brand__c=='Samsung'){
                 Dis.Price__c= (Dis.Price__c - (Dis.Price__c*50/100));}}
}
}
}