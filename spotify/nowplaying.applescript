if application "Spotify" is running then
	tell application "Spotify"
		set currentArtist to artist of current track as string
		set currentTrack to name of current track as string
		
		set completeString to currentArtist & " - " & currentTrack
		set numberOfCharacters to length of completeString
		if numberOfCharacters > 40 then
			return text 1 thru 40 of completeString
		else
			return completeString
		end if
	end tell
	
else
	return "Spotify"
end if