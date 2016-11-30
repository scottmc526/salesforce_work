public class RandomContactFactory {
	
    public static List<Contact> generateRandomContacts (Integer num, String lastName) {
        List<Contact> newCons = new List<Contact>();
        for(Integer i = 0; i < num; i++) {
            Contact con = new Contact(firstName = 'Name ' + i, lastName = lastName);
            newCons.add(con);
            
        }
        
        return newCons;
       
    
    
    }
    
    
}