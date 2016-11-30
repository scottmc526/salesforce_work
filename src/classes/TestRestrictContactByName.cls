@isTest
public class TestRestrictContactByName {
    @isTest static void testName() {
        Test.startTest();
        Contact con = new Contact(FirstName = 'SCOTT', LastName = 'INVALIDNAME');
        Database.SaveResult result = Database.insert(con, false);
       	Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The last name INVALIDNAME is not allowed for DML', result.getErrors()[0].getMessage());
        
        
    }
    
}