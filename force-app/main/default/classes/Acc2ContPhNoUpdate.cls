public class Acc2ContPhNoUpdate {
    Account acc= New Account();
		List<Contact> ConList=[SELECT id,phone from Contact where AccountID=:acc.ID];
}