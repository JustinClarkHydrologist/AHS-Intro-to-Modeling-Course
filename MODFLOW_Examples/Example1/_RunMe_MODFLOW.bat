: Lines that begin with ":" are ignored
: Lines that begin with echo shown on screen
: This is the Command Line script that is used to activate MODFLOW
echo Starting Model
mf2005.exe example1.nam
:MODFLOW-NWT.exe example1.nam
:mf-owhm.exe example1.nam
:
pause