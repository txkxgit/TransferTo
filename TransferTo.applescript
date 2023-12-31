##################################################################
# TransferTo
#
# Transfer selected Finder items to a user-selectable target.
# - Droplet mode: When items are dragged to the Droplet , the user is asked for a target folder
#
# - TransferTo uses rsync to perform the actions
#
#
# Timo Kahle
# 2015-04-25
#
# Changes
# 1.0 : Initial version
#
# 1.1
# + Merged Applet Operating Mode functionality (when the app is started by double-clicking)
# + Changed default Transfer Mode selection to UI_OPT_COPY
# o Changed to ScriptBundle
#
# 1.2
# + Added timeout for shell script execution to prevent timeouts on large file transfers
#
# 2.0 (2015-01-17)
# o Complete refactoring
# - Reduced to single transfer mode
# - Removed Applet mode for simplicity
# + Added Min OS X Version check (10.7)
# + Added support for Notification Center (>= 10.9)
# + Added support for native Progress Indication (>= 10.10)
#
# 2.0.1 (2015-03-29)
# - Removed "display progress" as it doesn't reliably work and only disturbs the user;
# we'll instead rely on messages when starting and stopping the process
# + Added notification when starting a Transfer
# 
# 2.0.2 (2015-04-25)
# o Unified constant names
# o Extended IsValidMinOS() for more flexibility
#
# 3.0 (2016-07-12)
# o Added property for button texts
# o Added "cancel button" functionality to display dialogs
# o Updated Min OS X version to 10.10
# - Removed obsolete functions
# - Removed obsolete check for Notification Center support & changed dialogs to Notification Center
# + Prepared logging support
# + Added refactored OS X minimum version check
# + Added dialog to enter custom rsync parameters with basic validation (at least one parameter must be given)
# + Updated icon
# + Added icon states for warning, info & error
#
# # 3.0.1 (2016-07-16)
# + Added basic logging
# + Add plist to store/restore LastUsedTargetPath
# + Add rsync logging
# + Added rsync default excludes
# + Add basic support for native progress bar
# o Improved logging
#
# 3.0.2 (2016-07-24)
# o Fixed a bug which led to an unrecoverable error if the path specified inside the plist wasn't available
#
# 3.0.3 (2016-08-08)
# o Bugfix: Added "quoted form" for aSource when logging, otherwise paths with whitespaces lead to logging errors
#
# 3.0.4 (2017-03-30)
# + Removed dialog to display used options
#
# ToDo
# + PRIO 1: Handle errors to set "theTargetPathRoot" if the directory defined inside the plist doesn't exist!!!
# + Add rsync options/profiles for the user to select from
# + Handle issues when source gets unavailable during active Transfer
#
##################################################################



# ===============================================
# User Config
# ===============================================
property CMD_RSYNC : "rsync "
property CMD_PROFILE_DEFAULT : "-rauE"


# ===============================================
# System Config, don't change anything beyond this point
# ===============================================

# Variables and Constants
property APP_NAME : "TransferTo"
property APP_VERSION : " 3.0.4"
property TIMEOUT_SEC : 3600 -- 60 minutes
property APP_DETAILS : APP_NAME & " (" & APP_VERSION & ")"
property OSX_VERSION_MIN : "10.10"

# Errors
property dlg_Info_OSVersion_Check_Failed : "Your OS X Version not supported. This app requires at least OS X 10.10 (Yosemite)."
property ERR_TRANSFER_FAILED : "ERROR: Could not transfer the selected item. Please try again."
property UI_RESULT_NOERRORS : "ⓘ Finished jobs without errors."
property UI_RESULT_ERRORS : "ⓘ Transfer finished with errors."
property DLG_SELECT_TARGET : "Please select the Target folder."
property UI_TXT_DROPLET_USE : "This is a droplet. Drop files or folders from Finder onto the apps icon for transfer."
property UI_TXT_TRANSFER : "ⓘ Transferring your items. Stand by..."
property UI_ENTER_PARAMETERS : "At least one rsync parameter must be given for rsync to work." & return & "Parameters must start with a dash (-)." & return & return & APP_NAME & " will use a safe default instead " & tab & "(" & CMD_PROFILE_DEFAULT & ")." & return & return & "Select 'OK' to confirm or 'Cancel' to cancel the transfer."
property UI_ENTER_PARAMETERS_TITLE : "rsync Parameters"
property UI_PARAMETERS_USING_DEFAULTS : "The default rsync parameters used for transferring the selected items are: "
property UI_TXT_ERROR_CREATING_LOG_FOLDER : "Error creating log folder"
property UI_TXT_ERROR_CREATING_LOG_FOLDER_DETAILS : "An error occured creating the log folder at: "
property UI_TXT_PARAMETER_SUMMARY : "Transfer Parameters"
property ERROR_MESSAGE_PREFIX : "Error: "
property ERROR_JOB_EXEC : "Error during job execution: "
property LOG_MESSAGE_JOB_SUMMARY : "Job summary: "
property LOG_END_LINE : "===================="

# Button texts
property BTN_CANCEL : "Cancel"
property BTN_OK : "OK"
property BTN_QUIT : "Quit"
property BTN_START : "Start"

# Environment
property APP_ICON : "droplet.icns"
property ICON_ERROR : "TranferTo-error.icns"
property ICON_INFO : "TranferTo-info.icns"
property ICON_WARN : "TranferTo-warning.icns"
property LOG_FILE : APP_NAME

# Plist
property SETTINGS_FILE : "net.thk.TransferTo.plist"
property LASTUSED_TARGETPATH_KEY : "LastUsedTargetPath"
property LASTUSED_RSYNC_PARAMETERS : "LastUsedRsyncParameters"
property CMD_PLIST_READ : "defaults read " & SETTINGS_FILE & " " & LASTUSED_TARGETPATH_KEY
property CMD_PLIST_WRITE : "defaults write " & SETTINGS_FILE & " " & LASTUSED_TARGETPATH_KEY & " -string "
property CMD_RSYNC_PARAMS_READ : "defaults read " & SETTINGS_FILE & " " & LASTUSED_RSYNC_PARAMETERS
property CMD_RSYNC_PARAMS_WRITE : "defaults write " & SETTINGS_FILE & " " & LASTUSED_RSYNC_PARAMETERS & " -string "

# rsync
property RSYNC_PARAM_LOG : " --log-file="
property RSYNC_PARAM_EXCLUDE : " --exclude '.DS_Store' --exclude '._*' --exclude '.Trash'"
property RSYNC_PARAM_DRY : " --dry-run " # Emulate actions only
property RSYNC_PARAM_SHRT_DRY : " -n "
property RSYNC_PARAM_RECURSE : " --recursive " # Recurse into directories
property RSYNC_PARAM_SHRT_RECURSE : " -r " # Recurse into directories
property RSYNC_PARAM_ARCHIVE : " --archive " # equals "-rlptgoD"
property RSYNC_PARAM_SHRT_ARCHIVE : " -a " # equals "-rlptgoD"
property RSYNC_PARAM_UPDATE : " --update " # Don't update files newer in the target
property RSYNC_PARAM_SHRT_UPDATE : " -u " # Don't update files newer in the target
property RSYNC_PARAM_SYMLINKS : " --links " # Copy symlinks as symlinks (i.e. no resolution)
property RSYNC_PARAM_SHRT_SYMLINKS : " -l" # Copy symlinks as symlinks (i.e. no resolution)
property RSYNC_PARAM_XATTR : " --extended-attributes " # Copy extended attributes, resource forks (equal to -E)
property RSYNC_PARAM_SHRT_XATTR : " -E " # Copy extended attributes, resource forks (equal to -E)
property ARR_RSYNC_PARAMETERS : {RSYNC_PARAM_DRY, RSYNC_PARAM_SHRT_DRY, RSYNC_PARAM_RECURSE, RSYNC_PARAM_SHRT_RECURSE, RSYNC_PARAM_ARCHIVE, RSYNC_PARAM_SHRT_ARCHIVE, RSYNC_PARAM_UPDATE, RSYNC_PARAM_SHRT_UPDATE, RSYNC_PARAM_SYMLINKS, RSYNC_PARAM_SHRT_SYMLINKS, RSYNC_PARAM_XATTR, RSYNC_PARAM_SHRT_XATTR}

##################################################################

# ===============================================================================================================
# Simple Mode when double-clicking the app
# ===============================================================================================================
on run
	# Define the app icon for dialogs
	set dlgIcon to (path to resource APP_ICON)
	set dlgIcon_Warn to (path to resource ICON_WARN)
	set dlgIcon_Info to (path to resource ICON_INFO)
	
	# Initialize the log file paths
	set theLogPathBase to (POSIX path of (path to library folder from user domain))
	set logFile to theLogPathBase & "Logs/" & APP_NAME & "/" & LOG_FILE & "-" & GetFormattedTimestamp() & ".log"
	
	# Create the Log folder if it doesn't exist
	set createLogFolder to ExecCommand("mkdir -p " & theLogPathBase & "Logs/" & APP_NAME & "/")
	
	if createLogFolder contains ERROR_MESSAGE_PREFIX then
		display dialog UI_TXT_ERROR_CREATING_LOG_FOLDER_DETAILS & return with title UI_TXT_ERROR_CREATING_LOG_FOLDER buttons {BTN_OK} default button {BTN_OK} cancel button {BTN_OK} with icon dlgIcon_Warn
		LogToConsole(UI_TXT_ERROR_CREATING_LOG_FOLDER & " '" & LOG_PATH & "' ", GetFormattedTimestamp(), logFile)
	end if
	
	# Initialize the log
	LogToConsole("Applet mode: " & APP_NAME & " " & APP_VERSION & " started as applet." & return & return, GetFormattedTimestamp(), logFile)
	
	# Check OS X Version for compatibility
	if OSXVersionSupported(OSX_VERSION_MIN) is false then
		LogToConsole("Applet mode: Minimum OS X version (" & OSX_VERSION_MIN & ") not met. Exiting.", GetFormattedTimestamp(), logFile)
		display dialog dlg_Info_OSVersion_Check_Failed & return with title dlgTitle buttons {BTN_OK} default button {BTN_OK} cancel button {BTN_OK} with icon dlgIcon_Warn
	end if
	
	# Display notification that this is a Droplet
	LogToConsole("Applet mode: Displaying Help", GetFormattedTimestamp(), logFile)
	LogToConsole(LOG_END_LINE & return, "", logFile)
	display dialog UI_TXT_DROPLET_USE with title APP_DETAILS buttons {BTN_OK} default button {BTN_OK} cancel button {BTN_OK} with icon dlgIcon_Info
	
end run


# ===============================================================================================================
### Droplet use
# ===============================================================================================================
# Handle dropped objects
on open (droppedItems)
	# Define the app icon for dialogs
	set dlgIcon to (path to resource APP_ICON)
	set dlgIcon_Warn to (path to resource ICON_WARN)
	set dlgIcon_Info to (path to resource ICON_INFO)
	set dlgIcon_Error to (path to resource ICON_ERROR)
	
	# Initialize the log file paths
	set theLogPathBase to (POSIX path of (path to library folder from user domain))
	#set logFile to theLogPathBase & "Logs/" & APP_NAME & "/" & LOG_FILE
	set logFile to theLogPathBase & "Logs/" & APP_NAME & "/" & LOG_FILE & "-" & GetFormattedTimestamp() & ".log"
	
	
	# Create the Log folder if it doesn't exist
	set createLogFolder to ExecCommand("mkdir -p " & theLogPathBase & "Logs/" & APP_NAME & "/")
	if createLogFolder contains ERROR_MESSAGE_PREFIX then
		display dialog UI_TXT_ERROR_CREATING_LOG_FOLDER_DETAILS & return with title UI_TXT_ERROR_CREATING_LOG_FOLDER buttons {BTN_OK} default button {BTN_OK} cancel button {BTN_OK} with icon dlgIcon_Warn
		LogToConsole(UI_TXT_ERROR_CREATING_LOG_FOLDER & " '" & LOG_PATH & "' ", GetFormattedTimestamp(), logFile)
	end if
	
	# Initialize the log
	LogToConsole("Starting " & APP_NAME & " " & APP_VERSION & return & return, GetFormattedTimestamp(), logFile)
	
	# Initialize
	set cnt_errors to 0
	set errors_list to {}
	set theTargetFolder to ""
	set theSourceItems to {}
	set aSource to ""
	set theSources to {}
	set theJobs to {}
	
	# Check OS X Version for compatibility
	if OSXVersionSupported(OSX_VERSION_MIN) is false then
		LogToConsole("Minimum OS X version (" & OSX_VERSION_MIN & ") not met. Exiting.", GetFormattedTimestamp(), logFile)
		display dialog dlg_Info_OSVersion_Check_Failed & return with title dlgTitle buttons {BTN_OK} default button {BTN_OK} cancel button {BTN_OK} with icon dlgIcon_Warn
	end if
	
	# Get current selection of droppped items
	set theSourceItems to droppedItems
	
	# Check if theTargetPathRoot is available in a plist
	set theTargetPathRoot to ExecCommand(CMD_PLIST_READ)
	LogToConsole("DEBUG: Target received from plist: " & theTargetPathRoot & return, GetFormattedTimestamp(), logFile)
	
	if (theTargetPathRoot contains "does not exist") or (theTargetPathRoot is "") then
		# If theTargetPathRoot doesn't exist or is empty, we need to initialize it with safe defaults		
		set theTargetPathRoot to (path to home folder)
	else
		# If the plist exists, we need to convert the path to Apple format to work with "choose folder"
		# First we need to ensure that the directory specified inside the plist exists, otherwise the next step will fail
		try
			set theTargetPathRoot to (POSIX file theTargetPathRoot as alias)
		on error
			set theTargetPathRoot to (path to home folder)
			#LogToConsole("DEBUG: Error retrieving Target from plist. Falling back to user home: " & theTargetPathRoot & return, GetFormattedTimestamp(), logFile)
		end try
	end if
	
	# Ask the user to choose a target folder
	set theTargetFolder to (choose folder with prompt DLG_SELECT_TARGET default location theTargetPathRoot) as text
	# Convert target path to POSIX format
	set theTargetFolder to (POSIX path of theTargetFolder)
	LogToConsole("Selected Target: " & theTargetFolder & return, GetFormattedTimestamp(), logFile)
	# Write theTargetFolder to the plist
	set theTargetPathRoot to ExecCommand(CMD_PLIST_WRITE & theTargetFolder)
	
	
	# Create the transfer command and display the used options
	#set selectedAction to button returned of (display dialog UI_PARAMETERS_USING_DEFAULTS & CMD_PROFILE_DEFAULT with title UI_TXT_PARAMETER_SUMMARY buttons {BTN_CANCEL, BTN_START} default button {BTN_START} cancel button {BTN_CANCEL} with icon dlgIcon_Info)
	#if selectedAction is BTN_START then
	#	set transferParameters to (CMD_PROFILE_DEFAULT & RSYNC_PARAM_LOG & logFile)
	#	LogToConsole("Transfer Parameters: " & transferParameters & return, GetFormattedTimestamp(), logFile)
	#end if
	
	
	# Create the transfer command and run
	set transferParameters to (CMD_PROFILE_DEFAULT & RSYNC_PARAM_LOG & logFile)
	LogToConsole("Transfer Parameters: " & transferParameters & return, GetFormattedTimestamp(), logFile)
	
	
	
	# Initialize the progress indicator
	set progressCnt to count of theSourceItems
	set progress description to "Transfer Status"
	set progress additional description to "Transferring..."
	set progress total steps to progressCnt
	
	
	# Convert source paths to POSIX format
	repeat with i in theSourceItems
		# Convert path to POSIX
		set aSource to (POSIX path of i)
		
		# Remove trailing slash to handle folder as folder
		if (the last character of aSource is "/") then
			set aSource to (text 1 thru ((length of aSource) - 1)) of aSource as string
		end if
		
		# Add to list theSources
		set end of theSources to aSource
		LogToConsole("Added source item: " & quoted form of aSource & return, GetFormattedTimestamp(), logFile)
	end repeat
	
	repeat with j in theSources
		set end of theJobs to CMD_RSYNC & transferParameters & " " & (quoted form of j) & " " & (quoted form of theTargetFolder)
		LogToConsole("Added job: " & CMD_RSYNC & transferParameters & " " & (quoted form of j) & " " & (quoted form of theTargetFolder) & return, GetFormattedTimestamp(), logFile)
	end repeat
	
	# Display Notification that transfer is being started
	display notification UI_TXT_TRANSFER with title APP_DETAILS
	
	# Initialize temporary counter for progress
	set progCnt to 0
	
	# Run all jobs
	repeat with i in theJobs
		set progCnt to progCnt + 1
		
		# Display progress
		set progress additional description to "Transferring item " & progCnt & " of " & progressCnt
		set progress completed steps to progCnt
		
		# Execute the i's job...						
		set theCommand to ExecCommand(i)
		LogToConsole("Executing job: " & i & return, GetFormattedTimestamp(), logFile)
		
		# ... and check for errors 
		if theCommand contains "Error:" then
			set cnt_errors to cnt_errors + 1
			set end of errors_list to theCommand & return
			LogToConsole(ERROR_JOB_EXEC & theCommand & return, GetFormattedTimestamp(), logFile)
		end if
	end repeat
	
	#set progress completed steps to cnt_progress
	
	# Determine if errors ocurred during execution
	if cnt_errors = 0 then
		display notification UI_RESULT_NOERRORS with title APP_DETAILS
		LogToConsole(LOG_MESSAGE_JOB_SUMMARY & UI_RESULT_NOERRORS & return & return, GetFormattedTimestamp(), logFile)
		LogToConsole(LOG_END_LINE & return, "", logFile)
	else
		# Errors occurred
		display notification UI_RESULT_ERRORS with title APP_DETAILS
		# In addition to Notification Center, display a summary of the errors for 10 seconds
		display dialog cnt_errors & UI_RESULT_ERRORS & return & errors_list as text with title APP_DETAILS with icon dlgIcon_Error buttons {BTN_OK} default button {BTN_OK} cancel button {BTN_OK} giving up after 10
		LogToConsole(LOG_MESSAGE_JOB_SUMMARY & cnt_errors & " errors occured" & return & (errors_list as text) & return & return, GetFormattedTimestamp(), logFile)
		LogToConsole(LOG_END_LINE & return, "", logFile)
	end if
	
end open




##################################################################
# Helper functions
##################################################################

# Run a command without admin privileges
on ExecCommand(theCMD)
	try
		#with timeout of TIMEOUT_SEC seconds
		set returnValue to do shell script (theCMD & " 2>&1")
		#set returnValue to do shell script (theCMD)
	on error errMsg
		set returnValue to "Error: " & errMsg
	end try
	
	return returnValue
end ExecCommand


# Valid OS X version
on OSXVersionSupported(minSupportedOSXVersion)
	set strOSXVersion to system version of (system info)
	considering numeric strings
		set IsSupportedOSXVersion to strOSXVersion is greater than or equal to minSupportedOSXVersion
	end considering
	
	return IsSupportedOSXVersion
end OSXVersionSupported


# Get formatted date/time stamp
on GetFormattedTimestamp()
	set dtStamp to do shell script ("date \"+%Y-%m-%d_%H%M%S\"")
	return dtStamp as string
end GetFormattedTimestamp


# Log to a file, requires a POSIX path
on LogToConsole(theLogMessage, theTimestamp, theLogFile)
	set theLogInfo to (do shell script "echo " & theTimestamp & " " & theLogMessage & " >> " & theLogFile & " 2>&1")
end LogToConsole