public class ContactController {
     @AuraEnabled
     public static String getContactDetails( Id contactid) 
     {
        list<Contact> lstC = [select Id,FirstName,LastName from Contact where id=:contactid];
            for (Contact obj: lstC) 
            {
                 if(obj.FirstName == 'Yagnesh')
                    { 
                    return 'This record is editable by Dr. Yagnesh Patel ONLY !!!';
                    }
            }
        return '';
}
}