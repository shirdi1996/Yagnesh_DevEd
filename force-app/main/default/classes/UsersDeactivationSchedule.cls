global class UsersDeactivationSchedule Implements Schedulable {
    
    global void execute(SchedulableContext sc)
   		 {	
         	InactiveUsersDeletion iAD = new InactiveUsersDeletion();
             database.executeBatch(iAD,200);
          }
}