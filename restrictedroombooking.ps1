$group = New-DistributionGroup "Room 10-024 Booking Allowed"
$members = @()
$members += "user1@pembina.com","user2@pembina.com"
$members = $members | Get-Mailbox
Add-DistributionGroupMember -Identity $group -Members $members -BypassSecurityGroupManagerCheck:$true
Set-CalendarProcessing -Identity "Room 221" -AutomateProcessing AutoAccept -BookInPolicy $group -AllBookInPolicy $false
