@isTest
    public class TestClass{
        public static testMethod void testFunction(){
        // create new record data
            Moblie__c mob = new Moblie__c();
                mob.Brand__c= 'Apple';
                    mob.Price__c=1000;
                        system.debug('Price before insert is :' + mob.price__c);
                             //expected is 1000
                                 // insert the new record
                            insert mob;
                         //trigger will come into picture and give a discount of 25 percent
                    //retrieve the new price
                Moblie__c mob1=[select price__c from Moblie__c where id=:mob.id];
            system.debug('Proce after the trigger is fired is :' + mob1.Price__c);
        // expected is 750
    //Test that the trigger is fired and did correct calculations
system.assertEquals(750, mob1.price__c);
        }
        
 public static testMethod void testFunction1(){
        // create new record data
            Moblie__c mob = new Moblie__c();
                mob.Brand__c= 'LG';
                    mob.Price__c=1100;
                        system.debug('Price before insert is :' + mob.price__c);
                             //expected is 1100
                                 // insert the new record
                            insert mob;
                         //trigger will come into picture and give a discount of 10 percent
                    //retrieve the new price
                Moblie__c mob1=[select price__c from Moblie__c where id=:mob.id];
            system.debug('Proce after the trigger is fired is :' + mob1.Price__c);
        // expected is 990
    //Test that the trigger is fired and did correct calculations
system.assertEquals(990, mob1.price__c);
        }
 public static testMethod void testFunction2(){
        // create new record data
            Moblie__c mob = new Moblie__c();
                mob.Brand__c= 'Samsung';
                    mob.Price__c=800;
                        system.debug('Price before insert is :' + mob.price__c);
                             //expected is 800
                                 // insert the new record
                            insert mob;
                         //trigger will come into picture and give a discount of 50 percent
                    //retrieve the new price
                Moblie__c mob1=[select price__c from Moblie__c where id=:mob.id];
            system.debug('Proce after the trigger is fired is :' + mob1.Price__c);
        // expected is 400
    //Test that the trigger is fired and did correct calculations
system.assertEquals(400, mob1.price__c);
        }


}