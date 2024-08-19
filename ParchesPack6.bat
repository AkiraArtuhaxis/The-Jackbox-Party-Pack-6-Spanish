@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Borrar "games/TriviaDeath2/content/QuiplashContent"
RD ".\TriviaDeath2\content\QuiplashContent" /q /s
:: Copiar y pegar "ArchivosEGSySwitch"
CD ..
CD ..
xcopy "ArchivosEGSySwitch" "Main" /s /y
:: Hacer versión EGS y Switch en JPP6-ES-EGS-SWITCH.zip
CD ".\Main"
DEL "jbg.config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP6-ES-EGS-SWITCH.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Borrar "games/TriviaDeath2/content/QuiplashContent"
RD ".\TriviaDeath2\content\QuiplashContent" /q /s
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
:: Hacer versión Steam en JPP6-ES.zip
CD "Main"
DEL "config.jet"
:: Hacer versión Steam en JPP6-ES.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP6-ES.zip" "."