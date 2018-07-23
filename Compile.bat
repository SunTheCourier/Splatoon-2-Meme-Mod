@echo off
if [%2]==[] GOTO no_lang
if [%1]==[] GOTO no_reg
if [%1]==[JPN] set Base=01003c700009c000
if [%1]==[JPN] set DLC=01003c700009d065
if [%1]==[USA] set Base=01003bc0000a0000
if [%1]==[USA] set DLC=01003bc0000a1065
if [%1]==[EUR] set Base=0100f8f0000a2000
if [%1]==[EUR] set DLC=0100f8f0000a3065
if not [%1]==[JPN] GOTO invalid1
if not [%1]==[JPN] GOTO invalid1
if not [%1]==[USA] GOTO invalid1
if not [%1]==[USA] GOTO invalid1
if not [%1]==[EUR] GOTO invalid1
if not [%1]==[EUR] GOTO invalid1
if not [%2]==[EUde] GOTO invalid2
if not [%2]==[EUen] GOTO invalid2
if not [%2]==[EUes] GOTO invalid2
if not [%2]==[EUfr] GOTO invalid2
if not [%2]==[EUit] GOTO invalid2
if not [%2]==[EUnl] GOTO invalid2
if not [%2]==[EUru] GOTO invalid2
if not [%2]==[JPjp] GOTO invalid2
if not [%2]==[USes] GOTO invalid2
if not [%2]==[USfr] GOTO invalid2
if not [%2]==[USen] GOTO invalid2
py -3 SARC-Tool/main.py -compress -little 01003bc0000a0000/Romfs/Message/CommonMsg_USen.release
py -3 SARC-Tool/main.py -compress -little 01003bc0000a0000/Romfs/Message/LayoutMsg_USen.release
mkdir Release\%Base%\Romfs\Message
mkdir Release\%Base%\Romfs\Sound\Resource\Stream
mkdir Release\%DLC%\Romfs\Sound\Resource\Stream
move 01003bc0000a0000\Romfs\Message\LayoutMsg_USen.release.szs Release/%Base%/Romfs/Message/LayoutMsg_%2.release.szs
move 01003bc0000a0000\Romfs\Message\CommonMsg_USen.release.szs Release/%Base%/Romfs/Message/CommonMsg_%2.release.szs
xcopy 01003bc0000a0000\Romfs\Sound\Resource\Stream Release\%Base%\Romfs\Sound\Resource\Stream
xcopy 01003bc0000a1065\Romfs\Sound\Resource\Stream Release\%DLC%\Romfs\Sound\Resource\Stream
echo done!
pause
exit /B 1
:no_reg
echo Specify a region.
exit /B 1
:no_lang
echo Specify a language.
exit /B 1
:invalid1
echo Invalid region.
exit /B 1
:invalid2
echo Invalid language.
exit /B 1