@isTest
private class casehand_Test{
  @testSetup
  static void setupTestData(){
    test.startTest();
    Account account_Obj = new Account(Name = 'Name444');
    Insert account_Obj; 
    Case case_Obj = new Case(IsEscalated = false);
    Insert case_Obj; 
    test.stopTest();
  }
  static testMethod void test_casehand_UseCase1(){
    List<Account> account_Obj  =  [SELECT Name from Account];
    System.assertEquals(true,account_Obj.size()>0);
    List<Case> case_Obj  =  [SELECT IsEscalated from Case];
    System.assertEquals(true,case_Obj.size()>0);
    //casehand obj01 = new casehand(new list<case>());
    casehand.casehand(case_Obj);
  }
}