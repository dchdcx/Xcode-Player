--Xcode Player
--Version 2.0
--Library Version 1.0
--动词和代词X
--Without Natural Music 5/2021

--START
set v to "2.0 (Library 1.0)"
set clist1 to 0 as string
set clist2 to 0 as string
set clist_temp to 0 as string

repeat
	
	repeat
		set _list1 to {"Accessibility Inspector", "Create ML", "FileMerge", "Instruments", "Reality Composer", "Printer Simulator", "Activate Terminal as root", "Show Packed Files", "Show Application Info", "Cancel"}
		set c_list1 to (choose from list _list1 with prompt "执行工作 Execution Work" default items {"Cancel"})
		try
			set clist1 to item 1 of c_list1
		on error
			return
		end try
		if clist1 is "Show Packed Files" then
			set _list2 to {"Sync Services Schema Validator", "Cinema Tools SDK", "Passbook Support Materials", "Podcast Producer Workflow Tutorial", "Syncrospector", "Back", "Cancel"}
			set c_list2 to (choose from list _list2 with prompt "选择文件 Select Files" default items {"Back"})
			try
				set clist2 to item 1 of c_list2
				if clist2 is not "Back" then exit repeat
			on error
				return
			end try
		else
			exit repeat
		end if
	end repeat
	
	if clist1 is not "0" then set _result to if1(clist1)
	if clist2 is not "0" then set _result to if2(clist2)
	
	try
		if (_result = 0) then exit repeat
	end try
	
end repeat

script info
	set cfp to current_folder_path() as string
	set xfp to xcode_folder_path() as string
	tell application "Xcode"
		set v1 to version
		set n1 to name
	end tell
	tell application "Xcode Player"
		set v2 to version
		set n2 to name
	end tell
	tell application "Finder"
		set v3 to version
		set n3 to name
	end tell
	
	display alert n1 & " " & v1 & ";" & return & n2 & " " & v2 & ";" & return & "^ is on this Mac." & return & return & "UNIX desktop environment -> " & n3 & " " & v3 & return & "Xcode Path -> " & xfp & return & "Current Path -> " & cfp
end script

on if1(clist_temp)
	if clist_temp is "Accessibility Inspector" then
		tell application "Accessibility Inspector" to activate
		delay
		return
	end if
	if clist_temp is "Create ML" then
		tell application "Create ML" to activate
		delay
		return
	end if
	if clist_temp is "FileMerge" then
		tell application "FileMerge" to activate
		delay
		return
	end if
	if clist_temp is "Instruments" then
		tell application "Instruments" to activate
		delay
		return
	end if
	if clist_temp is "Reality Composer" then
		tell application "RealityComposer" to activate
		delay
		return
	end if
	if clist_temp is "Printer Simulator" then
		tell application "Printer Simulator" to activate
		delay
		return
	end if
	if clist_temp is "Activate Terminal as root" then
		tell application "Terminal" to do script "sudo -i"
		delay
		return
	end if
	if clist_temp is "Show Application Info" then
		tell info to run
		delay
		return
	end if
	if clist_temp is "Cancel" then return 0
end if1

on if2(clist_temp)
	if clist_temp is "Sync Services Schema Validator" then
		try
			tell application "DiskImageMounter" to open "/Applications/Xcode Player.app/Contents/Files/4139_schemavalidator.dmg"
			delay
		end try
		return
	end if
	if clist_temp is "Cinema Tools SDK" then
		try
			tell application "DiskImageMounter" to open "/Applications/Xcode Player.app/Contents/Files/ctxml.dmg"
		end try
		delay
		return
	end if
	if clist_temp is "Passbook Support Materials" then
		try
			tell application "DiskImageMounter" to open "/Applications/Xcode Player.app/Contents/Files/passbook_materials.dmg"
		end try
		delay
		return
	end if
	if clist_temp is "Podcast Producer Workflow Tutorial" then
		try
			tell application "DiskImageMounter" to open "/Applications/Xcode Player.app/Contents/Files/podcast_producer_workflow_tutorial_samplefiles.dmg"
		end try
		delay
		return
	end if
	if clist_temp is "Syncrospector" then
		try
			tell application "DiskImageMounter" to open "/Applications/Xcode Player.app/Contents/Files/syncrospector.dmg"
		end try
		delay
		return
	end if
	if clist_temp is "Cancel" then return 0
end if2

on current_folder_path()
	set UnixPath to POSIX path of ((path to me as text) & "::")
	return UnixPath
end current_folder_path

on xcode_folder_path()
	set UnixPath to POSIX path of ((path to application "Xcode" as text) & "::")
	return UnixPath
end xcode_folder_path

--END