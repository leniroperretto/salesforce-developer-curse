public class OpportunityController {

    public static void updateProfile(List<Id> oppIds){
        List<Opportunity> opps = [SELECT Id, Amount, Profile__c FROM Opportunity WHERE Id IN: oppIds];
        for(Opportunity opp : opps){
            // get opp record
            if(opp.Amount == null){
                opp.Profile__c = '';
            } else if(opp.Amount < 10000){
                opp.Profile__c = 'Low';
            } else if (opp.Amount > 50000){
                opp.Profile__c = 'High';
            } else {
                opp.Profile__c = 'Medium';
            }
            
        }
    // update opportunity
    update opps;
    }
}