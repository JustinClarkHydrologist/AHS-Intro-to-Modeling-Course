: Lines that begin with ":" are ignored
: Lines that begin with echo shown on screen
: This is the Command Line script that is used to activate MODFLOW
echo Starting Model
mf2005.exe example2.nam
:MODFLOW-NWT.exe example2.nam
:mf-owhm.exe example2.nam
:
pause