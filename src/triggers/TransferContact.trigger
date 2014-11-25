trigger TransferContact on Contact (before insert) {
   for(Contact loopInContacts: Trigger.new){
   	loopInContacts.AccountId = '001o00000068ZfC';
   }
}