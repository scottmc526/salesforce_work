public class Fridge implements KitchenUtility {
	private String modelNumber;
    private Integer numberInStock;
    public static final Integer stock = 5;
      
    public Fridge () {
        modelNumber = 'XX-XX';
        numberInStock = 0;
    }
    
    public Fridge (String theModelNumber, Integer theNumberInStock) {
        modelNumber = theModelNumber;
        numberInStock = theNumberInStock;
    }
    
	public void updateStock(Integer justSold) {
        numberInStock -= justSold;
    }
    
    public void setModelNumber(String theModel) {
        modelNumber = theModel;
    }
    
    public String getModelNumber() {
        return modelNumber;
    }
    
    public Integer ecoRating {
        get { return ecoRating; }
        
        set {ecoRating = value; if (ecoRating < 0) ecoRating = 0;}
    }
    
  	public static void toDebug(Fridge aFridge) {
        System.debug('Model number = ' + aFridge.modelNumber);
        System.debug('number in stock = ' + aFridge.numberInStock);
    }
    
}