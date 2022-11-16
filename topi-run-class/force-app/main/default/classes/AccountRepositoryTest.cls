/**
 * @author Pedro Collin
 */
@isTest
public  class AccountRepositoryTest {
    @isTest
    static void givenAccountWithCategoryPremiumAndAnnualRevenueWhenCreateThenReturnStoredAccounts () {
        
        //given
        List<Account> accounts = new List<Account>();

        accounts.add(AccountFixtureFactory.newAccount
        (
        'Pedro Collin', 
        'Premium', 
        1000001
        ));
        //when
        AccountRepository repository = new AccountRepository();

        Test.startTest();

        List<Account> storedAccounts = repository.create(accounts);

        test.stopTest();
        //then
        System.assertEquals(accounts.get(0).Name , storedAccounts.get(0).Name);
        System.assertEquals(accounts.get(0).Category__c, storedAccounts.get(0).Category__c);
        System.assertEquals(accounts.get(0).AnnualRevenue, storedAccounts.get(0).AnnualRevenue);
        System.assertEquals(accounts.get(0).Id , storedAccounts.get(0).Id);
        System.assert(storedAccounts.get(0).Id != null);
    }
}
