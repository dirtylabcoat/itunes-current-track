tell application "iTunes"
	try
		if not (exists current track) then return
		set this_artist to (get artist of current track)
		set this_track to (get name of current track)
		set this_album to (get album of current track)
	end try
end tell
try
	set track_info to this_artist & " - " & this_track & " (" & this_album & ")"
	return track_info
on error err
	display dialog err
end try
