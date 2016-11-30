@isTest
private class AccountAddressTest {
    
    public static List<Account> accountList;

    static void init() {
        accountList = new List<Account>();
    }
    
    @isTest static void testAccountTrigger () {
        init();
        Account a = New Account(Name = 'Test acct', ShippingPostalCode = '80123', BillingPostalCode = '80020', Match_Billing_Address__c = true);
        insert a;
        accountList = [SELECT ShippingPostalCode, BillingPostalCode FROM Account WHERE Name = 'Test acct'];
        System.assertEquals(accountList[0].BillingPostalCode, accountList[0].ShippingPostalCode);
	}
}