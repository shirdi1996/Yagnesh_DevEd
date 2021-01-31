trigger RejectdoubleBooking on Session_Speaker__c (before insert, before update) {
    for( Session_Speaker__c sessionspeaker : trigger.new) {
        //Retrieve session information inclucing session date and time 
        Session__c session =[select Id, Session_Date__c from Session__c where Id=:sessionSpeaker.Session__c];
    
        //Check if the Speaker has any sessions for the same date and time
    List<Session_Speaker__c> conflicts =[select Id from Session_speaker__c where Speaker__c =:sessionspeaker.Speaker__c and 
                                        Session__r.Session_Date__c=:session.Session_Date__c];
        
        //If conflicts exist, add an error (reject the database operation)
        if (!conflicts.isEmpty()) {
            sessionSpeaker.addError('The spealer is already booked for the date and time, please select another date and time');
               } 
        }
}