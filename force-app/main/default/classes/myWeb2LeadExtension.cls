public class myWeb2LeadExtension {

    private final Lead weblead;

    public myWeb2LeadExtension(ApexPages.StandardController
                                stdController) {
       weblead = (Lead)stdController.getRecord();
    }

     public PageReference saveLead() {
       try {
       insert(weblead);
       }
       catch(System.DMLException e) {
           ApexPages.addMessages(e);
           return null;
       }
       PageReference p = Page.Thank_You;
       p.setRedirect(true);
       return p;
     }
}