Trigger TriggerOnAccount on Account (before insert, After insert,Before update,after update){
    
     if(Trigger.isBefore){
        if(Trigger.isInsert&&Trigger.isUpdate){
        TriggerHandlerClass.makeFieldsAsMandatory(Trigger.new);
        }
    }
    //Trigger.BeforeInsert afterInsert
    if(Trigger.isInsert){
        if(Trigger.isBefore){
   		 TriggerHandlerClass.updateRatingBeforeInsert(Trigger.New);         
        }else if(Trigger.isAfter){
            TriggerHandlerClass.createopportunityAfterInsert(Trigger.New);
        }
    }
    
    //Trigger.BeforeUpdate AfterUpdate
    if(Trigger.isUpdate){
    	if(Trigger.isBefore){
        	TriggerHandlerClass.updatePhoneDescription(Trigger.new, Trigger.oldMap);
    	}
        else if(Trigger.isAfter){
            TriggerHandlerClass.updateAccPhonewithRelatedOppPhone(Trigger.new ,Trigger.oldMap);
        }
    }
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
        if(Trigger.isBefore&&(Trigger.isInsert||Trigger.isUpdate)){
            for(Account acc: Trigger.new){
                if(acc.Industry==Null||acc.Industry==''){
                    acc.AddError('please enter the industry trigger');
                }
                else if(acc.Fax==Null||acc.Fax==''){
                    acc.AddError('please enter the fax trigger');
                }
                else if(acc.Website==null||acc.Website==''){
                    acc.AddError('please enter the website trigger');
                }
            }
        }
      for(Account acc: Trigger.new){
                if(acc.Industry==Null||acc.Industry==''){
                    acc.AddError('please enter the industry');
                }
                else if(acc.Fax==Null||acc.Fax==''){
                    acc.AddError('please enter the website');
                }
                else if(acc.Website==null||acc.Website==''){
                    acc.AddError('please enter the fax');
                }
            }
    
    
    */
   /* if(Trigger.isInsert){
        if(Trigger.isBefore){
            TriggerHandlerClass.updateRatingBeforeInsert(Trigger.New);
        }
        else if(Trigger.isAfter){
            TriggerHandlerClass.createopportunityAfterInsert(Trigger.New);
        }
    }
    
    if(Trigger.isUpdate){
        
    }*/
   /*
     Trigger Example ON ObjectName(Before Insert ,After Update,After Delete){
    
         if(Trigger.isInsert&&Trigger.isBefore){
             //business logic
         }
         if(Trigger.isUpdate&&Trigger.isAfter){
             //business logic
         }
         if(Trigger.isDelete&&Trigger.isAfter){
             //business logic
         }
         //instead of using ISAFTER two times use if loops
         if(Trigger.isAfter){
             if(Trigger.isInsert){
                 //business logic
             }
             if(Trigger.isUpdate){
                 //business logic
             }
         }
         if(Trigger.isBefore){
             if(Trigger.isUpdate){
                 //business logic
             }
             if(Trigger.isInsert){
                 //business logic
             }
         }
    }
    //using SWITCH case
    Trigger example ON OBJNAME(before INsert,After Update,Before delete){
    SWITCH ON Trigger.OperationType{
        WHEN BEFORE_INSERT{
        //Business logic
        }
        WHEN AFTER_UPDATE{
            //BUSINESS LOGIC        
        }
        WHEN BEFORE_DELETE{
            //BUSINESS LOGIC
        }
        }   
    }
    
    
    */

  /*  
    if((Trigger.isInsert||Trigger.isUpdate)&&Trigger.isBefore){
        for(Account acc:Trigger.New){
            if(acc.Industry!=null&&acc.Industry=='Media'){
                acc.Rating='Hot';
            }
        }
    }

    */
}