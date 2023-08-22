/**
 * Fitness class with helpful methods
 * to calculate human fitness
 * */
public class Fitness {
	
    /**
     * calculateBMI method
     * accepts body weight (should be in kg)
     * and body height (should be in meter)
     * return BMI value
     * */
    public static Decimal calculateBMI(Decimal weight, Decimal height) {
        if(height <= 0 || weight < 0){
            return -1;
        } else {
        Decimal result = weight / (height*height);
        return result;
        }
    }
    
    /**
     * calculatePace method
     * accepts distance (in km)
     * and minutes
     * */
    public static Decimal calculatePace(Decimal distance, Decimal minutes) {
        if(distance < 0 || minutes <= 0){
            return -1;
        } else {
            Decimal hr = minutes / 60;
        Decimal pace = distance / hr;
        return pace;
    	}
    }        
}