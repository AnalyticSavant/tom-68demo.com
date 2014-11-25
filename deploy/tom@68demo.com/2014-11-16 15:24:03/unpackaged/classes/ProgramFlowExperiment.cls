public class ProgramFlowExperiment {
	
	public static Integer EmailCounter = 0;
	
	private void SendEmail()
	{
		EmailCounter++;
		System.Debug ('Queueing email to send');
	}
	
	
	private void SendQueuedEmails() {
		
		System.Debug ('Sending email queue');
	}
	
	public void HandleContactUpdateTrigger(List<Contact> newlist, Map<ID, Contact> oldmap ) {
		
		for (Contact ct : newlist){
		
			if(ct.OwnerID != oldmap.get(ct.ID).OwnerID)	{
				
				SendEmail();
			}
		}
		SendQueuedEmails();
	}
}