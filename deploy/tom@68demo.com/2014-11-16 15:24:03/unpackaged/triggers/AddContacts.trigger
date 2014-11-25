trigger AddContacts on Contact (before insert) {

	for (Contact so : Trigger.new) {
		so.AccountId = '001o00000068ZfC';
	}

}