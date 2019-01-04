; NSIS with Registry.nsh in Include and Registry.dll, FindProcDLL.dll, KillProcDLL.dll and SimpleSC.dll in Plugins

; **************************************************************************
; === Define constants ===
; **************************************************************************
!define VER 		"0.0.0.0"	; version of launcher
!define APPNAME 	"FileZilla"	; complete name of program
!define APP 		"FileZilla"	; short name of program without space and accent  this one is used for the final executable an in the directory structure
!define APPEXE 		"filezilla.exe"	; main exe name
!define APPDIR 		"App\FileZilla"	; main exe relative path
!define APPSWITCH 	``	; some default Parameters

;--- Define RegKeys ---
; !define REGISTRY
	; !define REGKEY1 "HKEY_LOCAL_MACHINE\SOFTWARE\FileZilla"

; --- Define install path relative to Program Files (used down) ---
; !define LOCALDIR "FileZilla FTP Client"
; --- Define RegServer Shared DLLs ---
	; !define LOCALDLL1 "$PROGRAMFILES\${LOCALDIR}\fzshellext.dll"
	; !define PORTABLEDLL1 "$EXEDIR\${APPDIR}\fzshellext.dll"


; **************************************************************************
; === Best Compression ===
; **************************************************************************
SetCompressor /SOLID lzma
SetCompressorDictSize 32

; **************************************************************************
; === Includes ===
; **************************************************************************
!include "..\_Include\Launcher.nsh" 
!include "TextReplace.nsh"

; **************************************************************************
; === Set basic information ===
; **************************************************************************
Name "${APPNAME} Portable"
OutFile "..\..\..\${APP}Portable\${APP}Portable.exe"
Icon "${APP}.ico"


; **************************************************************************
; === Other Actions ===
; **************************************************************************
Function Init
IfFileExists "$EXEDIR\${APPDIR}\fzdefaults.xml" +2
File "/oname=$EXEDIR\${APPDIR}\fzdefaults.xml" fzdefaults.xml

WriteRegStr HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List" "$EXEDIR\${APPDIR}\${APPEXE}" "$EXEDIR\${APPDIR}\${APPEXE}:*:Enabled:${APP}"

ReadINIStr $0 "$EXEDIR\Data\${APP}Portable.ini" "${APP}Portable" "LastDirectory"
StrCpy $1 $0 3
StrCpy $2 $EXEDIR 3
StrCmp $1 $2 +3
	${textreplace::ReplaceInFile} "$EXEDIR\Data\${APP}\filezilla.xml" "$EXEDIR\Data\${APP}\filezilla.xml" "$1" "$2" "" $0
	${textreplace::Unload}

FunctionEnd

Function Close
DeleteRegValue HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List" "$EXEDIR\${APPDIR}\${APPEXE}"

FunctionEnd

; **************************************************************************
; === Run Application ===
; **************************************************************************
Function Launch
SetOutPath "$EXEDIR\${APPDIR}"
${GetParameters} $0
ExecWait `"$EXEDIR\${APPDIR}\${APPEXE}"${APPSWITCH} $0`
WriteINIStr "$EXEDIR\Data\${APP}Portable.ini" "${APP}Portable" "GoodExit" "true"
newadvsplash::stop
FunctionEnd


; **************************************************************************
; ==== Running ====
; **************************************************************************
Function Restore

	Call Close

FunctionEnd

Section "Main"

	Call CheckStart

	Call Init

		Call SplashLogo
		Call Launch

	Call Restore

SectionEnd

