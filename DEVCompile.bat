@echo off
py -3 SARC-Tool/main.py -compress -little 01003bc0000a0000/Romfs/Message/CommonMsg_USen.release
py -3 SARC-Tool/main.py -compress -little 01003bc0000a0000/Romfs/Message/LayoutMsg_USen.release
mkdir Release\zip\TitleID\Romfs\Message
move 01003bc0000a0000\Romfs\Message\LayoutMsg_USen.release.szs Release/zip/TitleID/Romfs/Message/LayoutMsg_USen.release.szs
move 01003bc0000a0000\Romfs\Message\CommonMsg_USen.release.szs Release/zip/TitleID/Romfs/Message/CommonMsg_USen.release.szs
7z\7za.exe a -tzip -mx9 Release\MSG.zip ./Release/zip/*
RMDIR /S /Q Release\zip\TitleID\Romfs\Message
mkdir Release\zip\TitleID\Romfs\Sound\Resource\Stream
xcopy 01003bc0000a0000\Romfs\Sound\Resource\Stream Release\zip\TitleID\Romfs\Sound\Resource\Stream
7z\7za.exe a -tzip -mx9 Release\Sound.zip ./Release/zip/*
RMDIR /S /Q Release\zip\TitleID\Romfs\Sound\Resource\Stream
mkdir Release\zip\TitleID\Romfs\Sound\Resource\Stream
xcopy 01003bc0000a1065\Romfs\Sound\Resource\Stream Release\zip\TitleID\Romfs\Sound\Resource\Stream
7z\7za.exe a -tzip -mx9 Release\OE-Sound.zip ./Release/zip/*
RMDIR /S /Q Release\zip
echo done!
pause