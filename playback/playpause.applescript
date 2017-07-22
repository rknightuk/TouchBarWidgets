set playState to "stopped"

if application "Spotify" is running then
	tell application "Spotify"
		if (player state as string) is equal to "paused" or (player state as string) is equal to "stopped" then
			return "showPlay"
		else
			return "showPaused"
		end if
	end tell
end if

if application "iTunes" is running then
	tell application "iTunes"
		if (player state as string) is equal to "paused" or (player state as string) is equal to "stopped" then
			return "showPlay"
		else
			return "showPaused"
		end if
	end tell
end if

return "showPlay"