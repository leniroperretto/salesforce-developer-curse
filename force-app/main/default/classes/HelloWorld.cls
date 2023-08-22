public class HelloWorld {
    private String greeting = 'Hello World';
    // public variable
    public String publicGreeting = 'My public greeting var';
    public String varFromVSCode = 'Var from VsCode Auto Save';
    
    /*private String goodMorning = 'Good Morning';
    private String goodAfternoon = 'Good Afternoon';
    private String goodEvening = 'Good Evening';
    */
    /*
    public void printGreeting() {
        System.debug(greeting);
    }
    
    public void printGoodMorning() {
        System.debug(goodMorning);
    }
    
    public void printGoodAfternoon() {
        System.debug(goodAfternoon);
    }
    
    public void printGoodEvening() {
        System.debug(goodEvening);
    }
*/
    
    public void printMessage(String msg){
        System.debug(msg);
    }
    
    // retornar o dia com base no dayNumber, 0 - domingo, 1 - segunda, 2 - terça...
    public String getDay(Integer dayNumber){
        String dayString = '';
        
        switch on dayNumber{
            when 0 {
                dayString = 'Sunday';
            }
            when 1 {
                dayString = 'Monday';
            }
            when 2 {
                dayString = 'Tuesday';
            }
            when 3 {
                dayString = 'Wednesday';
            }
            when 4 {
                dayString = 'Thursday';
            }
            when 5 {
                dayString = 'Friday';
            }
            when 6 {
                dayString = 'Saturday';
            }
            when else {
                dayString = 'Invalid day number';
            }
        }
        return dayString;
     }             
        public String getDay(String dayAbbreviation){
        String dayString = '';
        
        switch on dayAbbreviation{
            when 'Sun'{
                dayString = 'Sunday';
            }
            when 'Mon'{
                dayString = 'Monday';
            }
            when 'Tue' {
                dayString = 'Tuesday';
            }
            when 'Wed' {
                dayString = 'Wednesday';
            }
            when 'Thu' {
                dayString = 'Thursday';
            }
            when 'Fri' {
                dayString = 'Friday';
            }
            when 'Sat' {
                dayString = 'Saturday';
            }
            when else {
                dayString = 'Invalid abbreviation';
            }
        }
        return dayString;
 }             
}
    // erro de acesso aos modificadores, sendo que a classe é pública, não se pode alterar para global.
    /*global void printpublicGreeting() {
        System.debug(publicGreeting);
    }*/