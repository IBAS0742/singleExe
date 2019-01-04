/*
http://sourceforge.net/projects/filezilla/files/FileZilla_Client/3.6.0.1/FileZilla_3.6.0.1_win32.zip/download
http://sourceforge.net/projects/filezilla/files/FileZilla_Client_Unstable/3.6.0-beta1/FileZilla_3.6.0-beta1_win32.zip/download
http://downloads.sourceforge.net/filezilla/FileZilla_3.5.3_win32-setup.exe
http://sourceforge.net/projects/filezilla/files/FileZilla_Client/3.5.3/FileZilla_3.5.3_win32.zip/download
http://ignum.dl.sourceforge.net/project/filezilla/FileZilla_Client/3.5.3/FileZilla_3.5.3_win32.zip
zip, déplacer locales et effacer fzshellext*
*/
!define DLVER	"3.6.0.2"
!define APPVER 	"0.0.0.0"
!define APPNAME "FileZilla"
!define APP 	"FileZilla"
!define DLNAME	"FileZilla"
!define APPLANG	"Multilingual"
!define FOLDER	"FileZillaPortable"
!define FINISHRUN ; Delete if not Finish pages
!define OPTIONS ; Delete if no Components
; !define DESCRIPTION	"Fast and reliable cross-platform FTP, FTPS and SFTP client" ; Delete if no AppInfo

SetCompressor /SOLID lzma
SetCompressorDictSize 32

!include "..\_Include\Installer.nsh"

!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "Arabic"
!insertmacro MUI_LANGUAGE "Bulgarian"
!insertmacro MUI_LANGUAGE "Catalan"
!insertmacro MUI_LANGUAGE "Czech"
!insertmacro MUI_LANGUAGE "Danish"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "Greek"
!insertmacro MUI_LANGUAGE "Spanish"
!insertmacro MUI_LANGUAGE "Estonian"
!insertmacro MUI_LANGUAGE "Basque"
!insertmacro MUI_LANGUAGE "Finnish"
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "Galician"
!insertmacro MUI_LANGUAGE "Hebrew"
!insertmacro MUI_LANGUAGE "Hungarian"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Korean"
!insertmacro MUI_LANGUAGE "Kurdish"
!insertmacro MUI_LANGUAGE "Lithuanian"
!insertmacro MUI_LANGUAGE "Macedonian"
!insertmacro MUI_LANGUAGE "Norwegian"
!insertmacro MUI_LANGUAGE "Dutch"
!insertmacro MUI_LANGUAGE "NorwegianNynorsk"
!insertmacro MUI_LANGUAGE "Polish"
!insertmacro MUI_LANGUAGE "PortugueseBR"
!insertmacro MUI_LANGUAGE "Portuguese"
!insertmacro MUI_LANGUAGE "Romanian"
!insertmacro MUI_LANGUAGE "Russian"
!insertmacro MUI_LANGUAGE "Slovak"
!insertmacro MUI_LANGUAGE "Slovenian"
!insertmacro MUI_LANGUAGE "Swedish"
!insertmacro MUI_LANGUAGE "Thai"
!insertmacro MUI_LANGUAGE "Turkish"
!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "TradChinese"


Section "${APP} Portable English"
SectionIn RO
	SetOutPath "$INSTDIR"
		File "..\..\..\${FOLDER}\${APP}Portable.exe"
	SetOutPath "$INSTDIR\App\${APP}"
	File /r "..\..\..\${FOLDER}\App\${APP}\*.*"
SectionEnd

; --- Delete if no Components
SectionGroup "Language"

Section /o "Arabic" ar
	SetOutPath "$INSTDIR\App\${APP}\locales\ar"
	File /r "locales\ar\*.*"
SectionEnd

Section /o "Bulgarian" bg_BG
	SetOutPath "$INSTDIR\App\${APP}\locales\bg_BG"
	File /r "locales\bg_BG\*.*"
SectionEnd

Section /o "Catalan" ca
	SetOutPath "$INSTDIR\App\${APP}\locales\ca"
	File /r "locales\ca\*.*"
SectionEnd

Section /o "Czech" cs_CZ
	SetOutPath "$INSTDIR\App\${APP}\locales\cs_CZ"
	File /r "locales\cs_CZ\*.*"
SectionEnd

Section /o "Danish" da_DK
	SetOutPath "$INSTDIR\App\${APP}\locales\da_DK"
	File /r "locales\da_DK\*.*"
SectionEnd

Section /o "German" de
	SetOutPath "$INSTDIR\App\${APP}\locales\de"
	File /r "locales\de\*.*"
SectionEnd

Section /o "Greek" el
	SetOutPath "$INSTDIR\App\${APP}\locales\el"
	File /r "locales\el\*.*"
SectionEnd

Section /o "Spanish" es
	SetOutPath "$INSTDIR\App\${APP}\locales\es"
	File /r "locales\es\*.*"
SectionEnd

Section /o "Estonian" et_EE
	SetOutPath "$INSTDIR\App\${APP}\locales\et_EE"
	File /r "locales\et_EE\*.*"
SectionEnd

Section /o "Basque" eu_ES
	SetOutPath "$INSTDIR\App\${APP}\locales\eu_ES"
	File /r "locales\eu_ES\*.*"
SectionEnd

Section /o "Finnish" fi_FI
	SetOutPath "$INSTDIR\App\${APP}\locales\fi_FI"
	File /r "locales\fi_FI\*.*"
SectionEnd

Section /o "French" fr
	SetOutPath "$INSTDIR\App\${APP}\locales\fr"
	File /r "locales\fr\*.*"
SectionEnd

Section /o "Galician" gl_ES
	SetOutPath "$INSTDIR\App\${APP}\locales\gl_ES"
	File /r "locales\gl_ES\*.*"
SectionEnd

Section /o "Hebrew" he_IL
	SetOutPath "$INSTDIR\App\${APP}\locales\he_IL"
	File /r "locales\he_IL\*.*"
SectionEnd

Section /o "Hungarian" hu_HU
	SetOutPath "$INSTDIR\App\${APP}\locales\hu_HU"
	File /r "locales\hu_HU\*.*"
SectionEnd

Section /o "Italian" it
	SetOutPath "$INSTDIR\App\${APP}\locales\it"
	File /r "locales\it\*.*"
SectionEnd

Section /o "Japanese" ja_JP
	SetOutPath "$INSTDIR\App\${APP}\locales\ja_JP"
	File /r "locales\ja_JP\*.*"
SectionEnd

Section /o "Korean" ko_KR
	SetOutPath "$INSTDIR\App\${APP}\locales\ko_KR"
	File /r "locales\ko_KR\*.*"
SectionEnd

Section /o "Kurdish" ku
	SetOutPath "$INSTDIR\App\${APP}\locales\ku"
	File /r "locales\ku\*.*"
SectionEnd

Section /o "Lithuanian" lt_LT
	SetOutPath "$INSTDIR\App\${APP}\locales\lt_LT"
	File /r "locales\lt_LT\*.*"
SectionEnd

Section /o "Macedonian" mk_MK
	SetOutPath "$INSTDIR\App\${APP}\locales\mk_MK"
	File /r "locales\mk_MK\*.*"
SectionEnd

Section /o "Norwegian" nb_NO
	SetOutPath "$INSTDIR\App\${APP}\locales\nb_NO"
	File /r "locales\nb_NO\*.*"
SectionEnd

Section /o "Dutch" nl
	SetOutPath "$INSTDIR\App\${APP}\locales\nl"
	File /r "locales\nl\*.*"
SectionEnd

Section /o "NorwegianNynorsk" nn_NO
	SetOutPath "$INSTDIR\App\${APP}\locales\nn_NO"
	File /r "locales\nn_NO\*.*"
SectionEnd

Section /o "Polish" pl_PL
	SetOutPath "$INSTDIR\App\${APP}\locales\pl_PL"
	File /r "locales\pl_PL\*.*"
SectionEnd

Section /o "PortugueseBR" pt_BR
	SetOutPath "$INSTDIR\App\${APP}\locales\pt_BR"
	File /r "locales\pt_BR\*.*"
SectionEnd

Section /o "Portuguese" pt_PT
	SetOutPath "$INSTDIR\App\${APP}\locales\pt_PT"
	File /r "locales\pt_PT\*.*"
SectionEnd

Section /o "Romanian" ro_RO
	SetOutPath "$INSTDIR\App\${APP}\locales\ro_RO"
	File /r "locales\ro_RO\*.*"
SectionEnd

Section /o "Russian" ru
	SetOutPath "$INSTDIR\App\${APP}\locales\ru"
	File /r "locales\ru\*.*"
SectionEnd

Section /o "Slovak" sk_SK
	SetOutPath "$INSTDIR\App\${APP}\locales\sk_SK"
	File /r "locales\sk_SK\*.*"
SectionEnd

Section /o "Slovenian" sl_SI
	SetOutPath "$INSTDIR\App\${APP}\locales\sl_SI"
	File /r "locales\sl_SI\*.*"
SectionEnd

Section /o "Swedish" sv
	SetOutPath "$INSTDIR\App\${APP}\locales\sv"
	File /r "locales\sv\*.*"
SectionEnd

Section /o "Thai" th_TH
	SetOutPath "$INSTDIR\App\${APP}\locales\th_TH"
	File /r "locales\th_TH\*.*"
SectionEnd

Section /o "Turkish" tr
	SetOutPath "$INSTDIR\App\${APP}\locales\tr"
	File /r "locales\tr\*.*"
SectionEnd

Section /o "Ukrainian" uk_UA
	SetOutPath "$INSTDIR\App\${APP}\locales\uk_UA"
	File /r "locales\uk_UA\*.*"
SectionEnd

Section /o "SimpChinese" zh_CN
	SetOutPath "$INSTDIR\App\${APP}\locales\zh_CN"
	File /r "locales\zh_CN\*.*"
SectionEnd

Section /o "TradChinese" zh_TW
	SetOutPath "$INSTDIR\App\${APP}\locales\zh_TW"
	File /r "locales\zh_TW\*.*"
SectionEnd

SectionGroupEnd

Function Init
StrCmp $LANGUAGE ${LANG_ARABIC} 0 +2
SectionSetFlags ${ar} 1
StrCmp $LANGUAGE ${LANG_BULGARIAN} 0 +2
SectionSetFlags ${bg_BG} 1
StrCmp $LANGUAGE ${LANG_CATALAN} 0 +2
SectionSetFlags ${ca} 1
StrCmp $LANGUAGE ${LANG_CZECH} 0 +2
SectionSetFlags ${cs_CZ} 1
StrCmp $LANGUAGE ${LANG_DANISH} 0 +2
SectionSetFlags ${da_DK} 1
StrCmp $LANGUAGE ${LANG_GERMAN} 0 +2
SectionSetFlags ${de} 1
StrCmp $LANGUAGE ${LANG_GREEK} 0 +2
SectionSetFlags ${el} 1
StrCmp $LANGUAGE ${LANG_SPANISH} 0 +2
SectionSetFlags ${es} 1
StrCmp $LANGUAGE ${LANG_ESTONIAN} 0 +2
SectionSetFlags ${et_EE} 1
StrCmp $LANGUAGE ${LANG_BASQUE} 0 +2
SectionSetFlags ${eu_ES} 1
StrCmp $LANGUAGE ${LANG_FINNISH} 0 +2
SectionSetFlags ${fi_FI} 1
StrCmp $LANGUAGE ${LANG_FRENCH} 0 +2
SectionSetFlags ${fr} 1
StrCmp $LANGUAGE ${LANG_GALICIAN} 0 +2
SectionSetFlags ${gl_ES} 1
StrCmp $LANGUAGE ${LANG_HEBREW} 0 +2
SectionSetFlags ${he_IL} 1
StrCmp $LANGUAGE ${LANG_HUNGARIAN} 0 +2
SectionSetFlags ${hu_HU} 1
StrCmp $LANGUAGE ${LANG_ITALIAN} 0 +2
SectionSetFlags ${it} 1
StrCmp $LANGUAGE ${LANG_JAPANESE} 0 +2
SectionSetFlags ${ja_JP} 1
StrCmp $LANGUAGE ${LANG_KOREAN} 0 +2
SectionSetFlags ${ko_KR} 1
StrCmp $LANGUAGE ${LANG_KURDISH} 0 +2
SectionSetFlags ${ku} 1
StrCmp $LANGUAGE ${LANG_LITHUANIAN} 0 +2
SectionSetFlags ${lt_LT} 1
StrCmp $LANGUAGE ${LANG_MACEDONIAN} 0 +2
SectionSetFlags ${mk_MK} 1
StrCmp $LANGUAGE ${LANG_NORWEGIAN} 0 +2
SectionSetFlags ${nb_NO} 1
StrCmp $LANGUAGE ${LANG_DUTCH} 0 +2
SectionSetFlags ${nl} 1
StrCmp $LANGUAGE ${LANG_NORWEGIANNYNORSK} 0 +2
SectionSetFlags ${nn_NO} 1
StrCmp $LANGUAGE ${LANG_POLISH} 0 +2
SectionSetFlags ${pl_PL} 1
StrCmp $LANGUAGE ${LANG_PORTUGUESEBR} 0 +2
SectionSetFlags ${pt_BR} 1
StrCmp $LANGUAGE ${LANG_PORTUGUESE} 0 +2
SectionSetFlags ${pt_PT} 1
StrCmp $LANGUAGE ${LANG_ROMANIAN} 0 +2
SectionSetFlags ${ro_RO} 1
StrCmp $LANGUAGE ${LANG_RUSSIAN} 0 +2
SectionSetFlags ${ru} 1
StrCmp $LANGUAGE ${LANG_SLOVAK} 0 +2
SectionSetFlags ${sk_SK} 1
StrCmp $LANGUAGE ${LANG_SLOVENIAN} 0 +2
SectionSetFlags ${sl_SI} 1
StrCmp $LANGUAGE ${LANG_SWEDISH} 0 +2
SectionSetFlags ${sv} 1
StrCmp $LANGUAGE ${LANG_THAI} 0 +2
SectionSetFlags ${th_TH} 1
StrCmp $LANGUAGE ${LANG_TURKISH} 0 +2
SectionSetFlags ${tr} 1
StrCmp $LANGUAGE ${LANG_UKRAINIAN} 0 +2
SectionSetFlags ${uk_UA} 1
StrCmp $LANGUAGE ${LANG_SIMPCHINESE} 0 +2
SectionSetFlags ${zh_CN} 1
StrCmp $LANGUAGE ${LANG_TRADCHINESE} 0 +2
SectionSetFlags ${zh_TW} 1

FunctionEnd
