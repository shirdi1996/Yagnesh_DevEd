public class SalaryOffer {
     public static void Exp(list<Job_Application__c> newJobApp){
           for(Job_Application__c JobApp :newJobApp){
               if (JobApp.experience_in_years__c <4) {
                   JobApp.Salary_Offered__c=5000;
       }
       else if (JobApp.experience_in_years__c >= 4 && JobApp.experience_in_years__c < 6)
       {
           JobApp.Salary_Offered__c = 7000;
       } 
           else JobApp.salary_offered__c = 10000;
   }
  }
}