@echo off
if [%1]==[] GOTO no_reg
if [%1]==[JPN] set Base=01003c700009c000
if [%1]==[JPN] set DLC=01003c700009d065
if [%1]==[JPN] GOTO check1
if [%1]==[USA] set Base=01003bc0000a0000
if [%1]==[USA] set DLC=01003bc0000a1065
if [%1]==[USA] GOTO check1
if [%1]==[EUR] set Base=0100f8f0000a2000
if [%1]==[EUR] set DLC=0100f8f0000a3065
if [%1]==[EUR] GOTO check1
GOTO invalid1
:check1
if [%2]==[] GOTO no_lang
if [%2]==[EUde] set %lang%=EUde
if [%2]==[Eude] GOTO start
if [%2]==[EUen] set %lang%=EUen
if [%2]==[EUen] GOTO start
if [%2]==[EUes] set %lang%=EUes
if [%2]==[EUes] GOTO start
if [%2]==[EUfr] set %lang%=EUfr
if [%2]==[EUfr] GOTO start
if [%2]==[EUit] set %lang%=EUit
if [%2]==[EUit] GOTO start
if [%2]==[EUnl] set %lang%=EUnl
if [%2]==[ENul] GOTO start
if [%2]==[EUru] set %lang%=EUru
if [%2]==[EUru] GOTO start
if [%2]==[JPja] set %lang%=JPja
if [%2]==[JPja] GOTO start
if [%2]==[USes] set %lang%=USes
if [%2]==[USes] GOTO start
if [%2]==[USen] set %lang%=USen
if [%2]==[USen] GOTO start
GOTO invalid2
:start
py -3 SARC-Tool/main.py -compress -little 01003bc0000a0000/Romfs/Message/CommonMsg_USen.release
py -3 SARC-Tool/main.py -compress -little 01003bc0000a0000/Romfs/Message/LayoutMsg_USen.release
mkdir Release\%Base%\Romfs\Message
mkdir Release\%Base%\Romfs\Model
mkdir Release\%Base%\Romfs\Sound\Resource\Stream
mkdir Release\%DLC%\Romfs\Sound\Resource\Stream
move 01003bc0000a0000\Romfs\Message\LayoutMsg_USen.release.szs Release/%Base%/Romfs/Message/LayoutMsg_%lang%.release.szs
move 01003bc0000a0000\Romfs\Message\CommonMsg_USen.release.szs Release/%Base%/Romfs/Message/CommonMsg_%lang%.release.szs
xcopy 01003bc0000a0000\Romfs\Sound\Resource\Stream Release\%Base%\Romfs\Sound\Resource\Stream
xcopy 01003bc0000a1065\Romfs\Sound\Resource\Stream Release\%DLC%\Romfs\Sound\Resource\Stream
xcopy 01003bc0000a1065\Romfs\Model Release\%Base%\Romfs\Model
echo done!
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