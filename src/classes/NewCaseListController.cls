public class NewCaseListController {
	
    public List<Case> getNewCases() {
       List<Case> result = new List<Case>(); 
       List<Case> cases = Database.query('SELECT id, CaseNumber, Status FROM Case');
        for(Integer i = 0; i < cases.size(); i++) {
            if (cases[i].Status == 'new') {
                result.add(cases[i]);
            }
        }
       return result; 
    }
    
    
    
}