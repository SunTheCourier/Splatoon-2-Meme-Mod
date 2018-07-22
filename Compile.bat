@echo off
py -3 SARC-Tool/main.py -compress -little 01003bc0000a0000/Romfs/Message/CommonMsg_USen.release
py -3 SARC-Tool/main.py -compress -little 01003bc0000a0000/Romfs/Message/LayoutMsg_USen.release
mkdir Release\TitleID\Romfs\Message
mkdir Release\TitleID\Romfs\Sound\Resource\Stream
mkdir Release\TitleID(OE)\Romfs\Sound\Resource\Stream
move 01003bc0000a0000\Romfs\Message\LayoutMsg_USen.release.szs Release/TitleID/Romfs/Message/LayoutMsg_USen.release.szs
move 01003bc0000a0000\Romfs\Message\CommonMsg_USen.release.szs Release/TitleID/Romfs/Message/CommonMsg_USen.release.szs
xcopy 01003bc0000a0000\Romfs\Sound\Resource\Stream Release\TitleID\Romfs\Sound\Resource\Stream
xcopy 01003bc0000a1065\Romfs\Sound\Resource\Stream Release\TitleID(OE)\Romfs\Sound\Resource\Stream
echo done!
pause