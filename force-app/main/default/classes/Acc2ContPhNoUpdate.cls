/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-30-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   01-30-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public class Acc2ContPhNoUpdate {
  // Comment to test first change ater initial commit
    Account acc= New Account();
		List<Contact> ConList=[SELECT id,phone from Contact where AccountID=:acc.ID];
}