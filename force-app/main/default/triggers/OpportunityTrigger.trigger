/****************************************************************************************************************

VERSION     AUTHOR           DATE           DETAIL                                                
------   ------------   ------------     --------------------------------------------------      
1          Raghu S       05/28/2022         1. Create basic trigger functioanlity 
=================================================================================================================
*************************************************************************************************************** */ 

trigger OpportunityTrigger on Opportunity (before insert, before update, before delete, after insert, after update, after undelete) {

    
    if (trigger.isBefore) {
        
        if (trigger.isInsert) {
            OpportunityHandler.beforeInsert(trigger.newMap, trigger.oldMap, Trigger.new, Trigger.old);
        } 
        
        if (trigger.isUpdate) {
            OpportunityHandler.beforeUpdate(trigger.newMap, trigger.oldMap, Trigger.new, Trigger.old); 
        }

        if (trigger.isDelete) {
            OpportunityHandler.beforeDelete(trigger.oldMap, Trigger.old);
        }
    }
    
    if (trigger.isAfter) {        
        if (trigger.isInsert) {
            OpportunityHandler.afterInsert(trigger.newMap, trigger.oldMap, Trigger.new, Trigger.old);
        } 
        
        if (trigger.isUpdate) {
            OpportunityHandler.afterUpdate(trigger.newMap, trigger.oldMap, Trigger.new, Trigger.old); 
        }

        if (trigger.isDelete) {
            OpportunityHandler.afterDelete(trigger.oldMap, Trigger.old);
        }
    }
    
    
    

}