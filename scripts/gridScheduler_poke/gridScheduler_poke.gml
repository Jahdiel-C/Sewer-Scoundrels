with gridScheduler{
	currentDone++
	show_debug_message("Poke! "+string(other.id)+" is done acting. "+string(currentDone)+" out of "+string(currentActive)+" active entities are done.")

	if currentDone>=currentActive{
		currentActive = 0
		currentDone = 0
	
		gridScheduler_queueUpdate(argument0)
	}
}