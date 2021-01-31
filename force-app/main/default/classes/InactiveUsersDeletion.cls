global class InactiveUsersDeletion implements Database.Batchable<SObject>
	{
    dateTime dt = date.today()-90;
    public String query = 'SELECT Name, LastLoginDate, Id From User WHERE IsActive = true AND LastLoginDate <=: dt  and profile<>"System Adminstrator" ';
    
    global Database.querylocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc,List<User> scope)
    {
        List<User> userList = new List<User>();
        
        for(User s:scope)
        {
            User u =(user)s;
            userList.add(u);
        }
        
        if(userList.size() > 0)
        {
            for(User usr : userList)
            {
                usr.isActive = false;
            }
        }
        update userList;
    }
    
    global void finish(Database.BatchableContext bc)
    {
        AsyncApexJob a = [SELECT Id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email
                          FROM AsyncApexJob 
                          WHERE Id = :BC.getJobId()];
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {a.CreatedBy.Email};
            mail.setToAddresses(toAddresses);
        mail.setSubject('Apex Job Status: ' + a.Status);
        mail.setPlainTextBody('The batch Apex job processed ' + a.TotalJobItems + ' batches with '+ a.NumberOfErrors + ' failures.');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}