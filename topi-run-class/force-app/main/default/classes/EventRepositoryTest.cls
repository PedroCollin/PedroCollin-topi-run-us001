/**
 * @author Pedro Collin
 */
@isTest
public  class EventRepositoryTest {
    
    @isTest
    static void givenEventWhenCreateThenReturnStoreEvent () {
        
        Account account = AccountFixtureFactory.createAccount('Pedro Collin Jr', 'Premium', 1000001);

        Event event = EventFixtureFactory.newEvent('Apresentação institucional dos produtos Premium', 'description test', Datetime.now(), Datetime.now(), account, 'Telefônico');

        EventRepository repository = new EventRepository();

        Test.startTest();

        Event storedEvent = repository.create(event);

        Test.stopTest();

        System.assertEquals(event.Subject , storedEvent.Subject);
        
    }
}