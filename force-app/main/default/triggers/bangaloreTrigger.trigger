trigger bangaloreTrigger on City__c (after insert,after update)
{
    if((trigger.isBefore)&&(trigger.isInsert))
    {
        City__c  cc=[select id,name from City__c  where name='silkboard' limit 1];
        cc.name='ElectronicCity';
        update cc;
    }
    if((trigger.isAfter)&&(trigger.isUpdate))
    {
        City__c  c1=new City__c  (name='ECity');
        insert c1;
    }
    

}