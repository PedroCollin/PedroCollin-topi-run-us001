/**
 * @author Pedro Collin
 */
trigger AccountTrigger on Account (after insert) {

    new AccountTH().run();
}