set VPNName to "VPNName"

tell application "System Events"
	tell current location of network preferences
		set VPNservice to service VPNName
		set isConnected to connected of current configuration of VPNservice
		
		if isConnected then
			return "Connected"
		else
			return "Disconnected"
		end if
	end tell
end tell