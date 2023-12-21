trigger TriggerOnContact on Contact (before update,After update){
    
    if(Trigger.isUpdate&&Trigger.isBefore){
        ContactHandler.updatePhoneDescription(Trigger.new,Trigger.oldMap);
    }

}