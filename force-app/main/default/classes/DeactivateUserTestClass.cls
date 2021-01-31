@isTest
public class DeactivateUserTestClass {

    static testMethod void myTestMethod() {        
         test.starttest();
         DeactivateInactiveUsers myClass = new DeactivateInactiveUsers ();   
         String chron = '0 0 23 * * ?';        
         system.schedule('Test Sched', chron, myClass);
         test.stopTest();
    }
}