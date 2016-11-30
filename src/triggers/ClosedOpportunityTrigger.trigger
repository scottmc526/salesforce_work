trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    Task[] tasksToInsert = new Task[]{};
    for(Opportunity o: trigger.New) {
        if (o.StageName == 'Closed Won') {
           tasksToInsert.add(new Task(WhatId = o.Id, Subject = 'Follow Up Test Task'));
        }  
    }
    
    insert tasksToInsert;
    
}