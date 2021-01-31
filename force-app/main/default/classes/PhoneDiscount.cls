public class PhoneDiscount{ 
        public void discount(list<Book__c> newBook){
            for (Book__c book :newBook){
        if (book.Brand__c =='Apple') {
            book.Price__c = (book.Price__c - (book.Price__c*25/100)); 
        }
            } 
        }



}