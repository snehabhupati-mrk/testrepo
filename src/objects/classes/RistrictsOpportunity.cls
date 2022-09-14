public class RistrictsOpportunity {
    public static void RestricsOppoToAdding(list<opportunity>oppo){
        list<opportunity> opQ=[select id, Name, Amount from opportunity where createdDate=today];
        
        decimal totalAmount=0;
        for(opportunity opp:opQ){
            totalAmount= totalAmount + opp.Amount;
        
            }
        for(opportunity op:oppo){
            if(op.Amount>100000){
                op.Amount.adderror('No More Opportunity can be added');
                
            }
        }
            
        
    }

}


/*trigger TrigOnOpp on Opportunity (before insert) {
 List<Opportunity> Opportoberestricted = Trigger.new;
    list<Opportunity> opport = [select Name,amount from opportunity where createddate = today and CreatedById = :UserInfo.getUserId()];
  	
    decimal TotalAmount = 0;
    For(opportunity opp : opport )
    {
        
        TotalAmount = TotalAmount  +  opp.amount;
    }
    
    for(Opportunity oppp : Opportoberestricted){
        TotalAmount += oppp.amount; // TotalAmount =TotalAmount + oppp.amount; 
        system.debug(totalAmount);
        If (TotalAmount > 100000)
        {            
            oppp.addError('amount of opportunity is greater than 1 lac in a single day..is not allowed');
        }
    }
}*/