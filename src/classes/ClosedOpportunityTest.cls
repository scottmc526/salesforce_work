@isTest
private class ClosedOpportunityTest {
    public static List <Opportunity> oppList;
    public static List <Task> taskList;
    
	@isTest static void testClosedOpportunityTrigger() {
        Opportunity o = new Opportunity(Name = 'Test', CloseDate = System.today(), StageName = 'Closed Won');
        insert o;
        
        oppList = [SELECT Id, StageName FROM Opportunity WHERE Name = 'Test'];
        taskList = [SELECT whatId, Subject FROM Task];      
        //System.assertEquals(oppList[0].id, taskList[0].whatId);
        System.assertEquals('Follow Up Test Task', taskList[0].Subject);
    }
    
    
    
    
}