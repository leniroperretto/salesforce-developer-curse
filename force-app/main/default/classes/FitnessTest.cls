@isTest
public class FitnessTest {

    @isTest
    public static void calculateBMITest1(){
        Decimal weight = 60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(41.67, result, 'BMI should be 41.67 for 60kg weight and 1.2 meter height');
    }
    
        @isTest
    public static void calculateBMITest2(){
        Decimal weight = 0;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(0, result, 'BMI should be 0 for 0kg weight and 1.2 meter height');
    }
    
        @isTest
    public static void calculateBMITest3(){
        Decimal weight = 60;
        Decimal height = 0;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(-1, result, 'Invalid input');
    }
    
    @isTest
    public static void calculateBMITest4(){
        Decimal weight = -60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(-1, result, 'Invalid input');
    }
    
    @isTest
    public static void calculateBMITest5(){
        Decimal weight = 60;
        Decimal height = -1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        System.assertEquals(-1, result, 'Invalid input');
    }
    
    @isTest
    public static void calculatePace1(){
        Decimal distance = 10;
        Decimal minutes = 60;
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(10, result, 'Pace should 10km/h for 10km in 60 minutes');
    }
    
        
    @isTest
    public static void calculatePace2(){
        Decimal distance = 10;
        Decimal minutes = 0;
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(-1, result, 'Invalid input');
    }
    
        
    @isTest
    public static void calculatePace3(){
        Decimal distance = 0;
        Decimal minutes = 60;
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(0, result, 'Pace should 0km/h for 0km in 60 minutes');
    }
    
        
    @isTest
    public static void calculatePace4(){
        Decimal distance = -10;
        Decimal minutes = 60;
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(-1, result, 'Invalid input');
    }
    
        
    @isTest
    public static void calculatePace5(){
        Decimal distance = 10;
        Decimal minutes = -60;
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        System.assertEquals(-1, result, 'Invalid input');
    }
}