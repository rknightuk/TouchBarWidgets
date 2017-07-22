tell application "System Events"
	set num to count (every process whose name is "iTunes")
end tell
set maxSize to 40

if num > 0 then
	tell application "iTunes"
		set playState to (player state as text)
		if playState is equal to "playing" or playState is equal to "paused" then
			set trackName to name of current track
			set artistName to artist of current track
			if length of trackName is greater than maxSize then
				set trackName to text 1 thru (maxSize - 3) of trackName & "..."
			end if
			if length of artistName is greater than maxSize then
				set artistName to text 1 thru (maxSize - 3) of artistName & "..."
			end if
			set trackInfo to artistName & " - " & trackName
		else
			set trackInfo to "iTunes"
		end if
		return trackInfo
	end tell
else
	set trackInfo to "iTunes"
	return trackInfo
end if