public class DeactivateInactiveUsers implements Schedulable {
    public void execute(SchedulableContext context) {
        User[] selectedUsers = [SELECT Id FROM User WHERE IsActive = TRUE AND Id NOT IN (SELECT UserId FROM LoginHistory WHERE LoginTime = LAST_N_DAYS:30)];
        for(User record: selectedUsers) {
            record.IsActive = false;
        }
        Database.update(selectedUsers, false);
    }
}