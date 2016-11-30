trigger SendConfirmationEmail on Session_Speaker__c (after insert) {

    List<ID> sessionSpeakerIds = new List<Id>();
    
    for(Session_Speaker__c newItem : trigger.new) {
        sessionSpeakerIds.add(newItem.Id);
    }
    
    //Retrieve session name and time + speaker name and email related to IDs
    List<Session_Speaker__c> sessionSpeakers = [SELECT Session__r.Name,
                                               Session__r.Session_Date__c,
                                               Speaker__r.First_Name__c,
                                               Speaker__r.Last_Name__c,
                                               Speaker__r.Email__c
                                               FROM Session_Speaker__c WHERE Id IN :sessionSpeakerIds];
    
    if (sessionSpeakers.size() > 0) {
        //Send email if we know email address
        Session_Speaker__c sessionSpeaker = sessionSpeakers[0];
        if(sessionSpeaker.Speaker__r.Email__c != null) {
            String address = sessionSpeaker.Speaker__r.Email__c;
            String subject = 'Speaker Confirmation';
            String message = 'Dear ' + sessionSpeaker.Speaker__r.First_Name__c + ' your session, ' +
                sessionSpeaker.Session__r.Name + ' on ' + sessionSpeaker.Session__r.Session_Date__c + 
                'is confirmed. Thank you for speaking at the conference!';
            EmailManager.sendMail(address, subject, message);
                
             
        }
    }
}