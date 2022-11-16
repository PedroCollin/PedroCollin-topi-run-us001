/**
 * @author Pedro Collin
 */
public class AccountFilter {

	public List<Account> filterBySetCategoryAndRevenueTo(List<Account> newAccounts, String targetCategory, Decimal annualRevenue) {
		return filterByCategory(byAnnualRevenue(newAccounts, annualRevenue), targetCategory);
	}

    public List<Account> filterByCategory(List<Account> accounts, String targetCategory) {

        List<Account> filteredAccounts = new List<Account>();
		for ( Account account : accounts ) {

			if ( account.Category__c == targetCategory ) {
				filteredAccounts.add(account);
			}
		}
		return filteredAccounts;	
	}

	public List<Account> filterByAnnualRevenue(List<Account> accounts, Decimal annualRevenue) {
		List<Account> filteredAccounts = new List<Account>();
		for ( Account account : accounts ) {

			if ( account.AnnualRevenue >= annualRevenue ) {
				filteredAccounts.add(account);
			}
		}
		return filteredAccounts;
	}
}