/**
 * @author Pedro Collin 
 */
public class AccountRepository {
    virtual
    public List<Account> create (List<Account> accounts) {
        insert accounts;
        return accounts;
    }

    virtual public Account create (Account account) {
        insert account;
        return account;
    }
}
