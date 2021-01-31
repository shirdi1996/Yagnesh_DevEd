public class SubmitCaseController {

    public String CaseNumber { get; set; }
    
    public Case c { get; set; }
    public SubmitCaseController() {
        c = new Case();
    }
    //public integer cnum;
       
    
    // This method cancels the wizard, and returns the user to the  
    // Submit case page
    
    public PageReference cancel() {
            PageReference SubmitCasePage = new PageReference('/apex/SubmitCase');
            SubmitCasePage.setRedirect(true);
            return SubmitCasePage; 
    }
    
    public PageReference SubmitCase() {
        /*List<Contact> cons = [SELECT Id, email, AccountId, CreatedDate FROM Contact WHERE email = :c.SuppliedEmail order by CreatedDate desc];
        if (cons.size() < 1) {
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.WARNING, 'Please enter an email that matches our records');
            ApexPages.addMessage(msg);
            return null;
        } else {
            try {
                c.ContactId = cons.get(0).Id;
                c.AccountId = cons.get(0).AccountId;*/
                
                            
                // Specify DML options to ensure the assignment rules are executed
                Database.DMLOptions dmlOpts = new Database.DMLOptions();
                dmlOpts.assignmentRuleHeader.useDefaultRule = true;
                c.setOptions(dmlOpts);

                // Insert the case
                INSERT c;
                
                Case cFromDB =[select id, CaseNumber, CreatedDate from Case where id=:c.id];  
                system.debug('#######' + cFromDB.CaseNumber );      
                Datetime cnum = cFromDB.CreatedDate;

           

                return new PageReference('/apex/casethankyou');
                } /*catch (Exception e) {
                ApexPages.addMessages(e);
                return null;
            }*/
        }