public class getRecord {
	@AuraEnabled(cacheable=true)
  public static List<Account> getAccounts() {
  return [SELECT Id, Name, Phone, createddate FROM Account order by createddate desc limit 10];
  }
}