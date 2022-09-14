trigger testtrigger on Case (before insert, after insert,before update,after update,before delete, after delete,after undelete) {
           if(trigger.isbefore&&trigger.isinsert){
        
            }
          else if(trigger.isafter&&trigger.isinsert){
        
          }
   
          else if(trigger.isbefore&&trigger.isupdate){ 
         
          }   
          else if(trigger.isafter&&trigger.isupdate){    
        
          }
          else if(trigger.isbefore&&trigger.isdelete)  {
       
          }
          else if(trigger.isafter&&trigger.isdelete)  {
       
          } 
          else if(trigger.isafter&&trigger.isundelete)  {
        
    } 
}