# Splatoon 2 Meme Mod
[![Build status](https://ci.appveyor.com/api/projects/status/svijpy7a6uk0ou36?svg=true)](https://ci.appveyor.com/project/SunTheCourier/splatoon-2-meme-rom-hack)

## Contents!

A few story mode edits for both Octo Expansion and Octo Canyon (W.I.P), news dialogue edits (W.I.P), Ika Radio/Squid Beatz track renames by the [Splatoon Modding Hub Discord](https://discordapp.com/invite/Msk4nSj), and an extensive MIDI conversion of the soundtrack.


## How to Install
#### DISCLAIMER: WE DO NOT TAKE ANY RESPONSIBILITY FOR WHAT HAPPENS TO YOUR SWITCH. PLEASE ONLY USE THIS MOD IF YOU KNOW WHAT YOU ARE DOING. IF YOU DO NOT KNOW WHAT YOU ARE DOING PLEASE WAIT UNTIL LAYEREDFS IS COMPLETED. USING LAYEREDFS IN ITS CURRENT STATE CAN INCREASE CHANCES OF A BAN.

****1.**** Install LayeredFS.<br>

****2.**** Download latest from [releases](https://github.com/SunTheCourier/Splatoon-2-Meme-Mod/releases) or compile yourself from source and place game files under /atmosphere/titles/"TitleID"/ , where "TitleID" is the title id for your region. (You can find a list below. Octo Expansion uses a sperate title id to load files from the normal one. **Do not use if you do not own Octo Expansion.**)<br>



    JPN: 01003c700009c000
    OE JPN: 01003c700009d065
    EUR: 0100f8f0000a2000
    OE EUR: 0100f8f0000a3065
    USA: 01003bc0000a0000
    OE USA: 01003bc0000a1065



Please note that this pack has been done in US English, so filenames will need to be changed for other regions.

****2b.**** Replace USen at the end of CommonMsg_USen.release.szs and LayoutMsg_USen.release.szs to your language. You can find a list below of available. (This will not change what language this mod is displayed in.)<br>

```
EUde
EUen
EUes
EUfr
EUit
EUnl
EUru
JPja
USes
USfr
```

****3.**** ????

****4.**** Profit.


## Bugs

If the audio doesn't sound looped properly or doesn't play properly or if text is unreadable, please report it in the [issue tracker](https://github.com/SunTheCourier/Splatoon-2-Meme-ROM-hack/issues).

Any issue pertaining to install should be sent over to the [Splatoon Modding Hub]( https://discord.gg/5k4msvP).


## How to Contribute

Create a fork and edit the files, be as specific as you can when you send a PR!<br>

Note when editing News: Making sure to keep the mood of the text the same to keep the in game reaction the same. (We currently do not know how to edit the reactions in game.)


## Compiling from source

Get Builds from https://ci.appveyor.com/project/SunTheCourier/splatoon-2-meme-rom-hack or build it yourself.

### Building it Yourself
****1.**** Run ``` git clone https://github.com/SunTheCourier/Splatoon-2-Meme-Mod.git ``` in the terminal.

****2.**** Run ``` git clone https://github.com/aboood40091/SARC-Tool.git ``` inside /Splatoon-2-Meme-Mod/.

****3.**** Install any dependencies you may need (ex: SarcLib or libyaz0)

****3.**** Run ``` Compile.bat (title region) (text language)``` (It is not DEVCompile.bat, this is to create and zip a release with 7zip standalone console version.)

Possible title regions:
```
USA
JPN
EUR
```

Possible text languages:
```
EUde
EUen
EUes
EUfr
EUit
EUnl
EUru
JPja
USes
USen
USfr
```

****4.**** The Compiled version should be in /Release/.

## Credits

****Discord: @Shadów#6239  = 128656451236397056****<br>
****Discord: @Sun#7988  = 130825292292816897****<br>
****Discord: @TechWizard#0270 = 164755188937261058****<br>
****GomiHiko for their [Splat2Hypesquid Mod](https://github.com/GomiHiko/Splat2Hypesquid)****
****Everyone who submitted midi renames in the**** [**Splatoon Modding Hub**](https://discordapp.com/invite/Msk4nSj)<br>
**Everyone who actively submits PRs to this Git**
