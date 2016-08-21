###########################
##### THE EXECUTIONER #####
###########################

# Purpose : Creates a central place that allows for easy execution of programs
#           and applications
#
# Created : 28/05/2016, 17:04



Function Index {
    
    Write-Host " Type the name of one of the following to " -NoNewline -ForegroundColor Gray
    write-host "EXECUTE!" -ForegroundColor Red -NoNewline
    write-host " it " -ForegroundColor Gray `n
       
    Write-host " === 3D ===                      === MUSIC ===" -ForegroundColor DarkGray
    write-host " Maya                            Spotify      "
    write-host " Blender                         iTunes       "
    write-host " Mudbox                          FL-Studio"
    write-host " Unreal                          Audacity"
    write-host " Bitmap 2 Material(B2M)"
    write-host " Substance" `n

    write-host " === Games ===                   === Video ===" -ForegroundColor DarkGray
    write-host " GZDoom                          Handbrake"
    write-host " VWoW                            Lightworks"
    write-host " Dark Souls(DaS)                 Sorenson"
    write-host " RSCEvoloution(RSCE)"
    write-host " Path of Exile(PoE)"
    write-host " Quake"
    write-host " Quake Live" `n

    write-host " === Protection ===              === Other ===" -ForegroundColor DarkGray
    write-host " Avast                           Rufus USB ISO Writer"
    write-host " Disconnect"
    write-host " Anti-Malaware(AM)"
    write-host " PIA" `n

    Write-host " "
    Write-host "Type 'SG' for Script Grab" -foregroundcolor DarkCyan `n

    SwitchIt

    }


Function SwitchIt {

    switch (Read-host "Enter Name") {

        "Maya" {start-process "C:\Program Files\Autodesk\Maya2016\bin\maya.exe" ; XEQTD}
        "Blender" {start-process "C:\Users\Dynat\Desktop\Programs\3d\Blender.url" ; XEQTD}
        "Mudbox" {start-process "C:\Program Files\Autodesk\Mudbox 2016\mudbox.exe" ; XEQTD}
        "Unreal" {start-process "C:\Program Files\Epic Games\Launcher\Engine\Binaries\Win64\EpicGamesLauncher.exe" ; XEQTD}
        "B2M" {start-Process "C:\Program Files\Allegorithmic\Bitmap2Material\3.x\bitmap2material.exe" ; XEQTD}
        "Substance"{start-process "C:\Program Files\Allegorithmic\Substance Painter\Substance Painter.exe" ; XEQTD}
        "Spotify" {start-process "C:\Users\Dynat\AppData\Roaming\Spotify\Spotify.exe" ; XEQTD}
        "iTunes" {start-process "C:\Program Files\iTunes\iTunes.exe" ; XEQTD}
        "FLStudio" {start-process "C:\Program Files (x86)\Image-Line\FL Studio 12\FL64.exe" ; XEQTD}
        "Audacity" {start-process "C:\Program Files (x86)\Audacity\audacity.exe" ; XEQTD}
        "GZDoom" {start-process "C:\Users\Dynat\Desktop\Games\GZDoom\gzdoom.exe" ; XEQTD}
        "VWoW" {start-process "C:\Users\Dynat\Desktop\Games\World of WarcraftVANILLA\WoW.exe" ; XEQTD}
        "DaS" {start-process "C:\Users\Dynat\Desktop\Games\Dark Souls Prepare to Die Edition.url" ; XEQTD}
        "RSCE" {Start-process "C:\Users\Dynat\Desktop\Games\Launcher.jar" ; XEQTD}
        "PoE" {start-process "C:\Program Files (x86)\Grinding Gear Games\Path of Exile\PathOfExile.exe" ; XEQTD}
        "Quake" {start-process "C:\Users\Dynat\Desktop\Games\Quake.url" ; XEQTD}
        "Quake Live" {start-process "C:\Program Files (x86)\Quake Live\Launcher.exe" ; XEQTD}
        "Handbrake" {start-process "C:\Program Files\Handbrake\Handbrake.exe" ; XEQTD}
        "Lightworks" {start-process "C:\Program Files\Lightworks\Lightworks.exe" ; XEQTD}
        "Sorenson" {start-process "C:\Program Files (x86)\Sorenson Media\Sorenson Squeeze\Squeeze.exe" ; XEQTD}
        "Avast" {start-process "C:\Program Files\AVAST Software\Avast\avastui.exe" ; XEQTD}
        "Disconnect" {start-process "C:\Users\Dynat\AppData\Roaming\Disconnect\Disconnect Desktop\Disconnect Desktop.exe" ; XEQTD}
        "AM" {start-process "C:\Program Files (x86)\Malwarebytes Anti-Malware\mbam.exe" ; XEQTD}
        "PIA" {start-process "C:\Program Files\pia_manager\pia_manager.exe" ; XEQTD}
        "SG" {invoke-expression "C:\Users\Dynat\Desktop\Programs\MyScripts\ScriptGrab.ps1"}
        "Rufus" {Invoke-Expression "C:\Users\Dynat\Desktop\Programs\rufus-2.9.exe" ; XEQTD}
        default {write-host "WRONG!" -BackgroundColor red -ForegroundColor Black
                 SwitchIt}
        
    }

}


Function ExeQte {

    cls
    write-host "----------------------------------------------" -ForegroundColor DarkGreen
    write-host "--------------- THE EXECUTIONER --------------" -ForegroundColor DarkGreen
    write-host "----------------------------------------------" -ForegroundColor DarkGreen `n
    Frame
    
    write-host "-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\" -ForegroundColor DarkGreen
    write-host "-\-\-\-\-\-\-\ THE EXECUTIONER \-\-\-\-\-\-\-\" -ForegroundColor DarkGreen
    write-host "-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\" -ForegroundColor DarkGreen
    Frame

    
    write-host "-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|" -ForegroundColor DarkGreen
    write-host "-|-|-|-|-|-|-| THE EXECUTIONER |-|-|-|-|-|-|-|" -ForegroundColor DarkGreen
    write-host "-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|" -ForegroundColor DarkGreen
    Frame

    
    write-host "-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/" -ForegroundColor DarkGreen
    write-host "-/-/-/-/-/-/-/- THE EXECUTIONER -/-/-/-/-/-/-/" -ForegroundColor DarkGreen
    write-host "-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/" -ForegroundColor DarkGreen
    Frame

    write-host "----------------------------------------------" -ForegroundColor DarkGreen
    write-host "-------------- THE EXECUTIONER ---------------" -ForegroundColor DarkGreen
    write-host "----------------------------------------------" -ForegroundColor DarkGreen 
    write-host " ::::::::::::::::::::::::::::::::::::::::::::" -ForegroundColor DarkRed
    write-host " ::::::::d8888888a8888888888a8888888b::::::::" -ForegroundColor DarkRed
    write-host " :::::::dP::::::::88888888888:::::::Yb:::::::" -ForegroundColor DarkRed
    write-host " ::::::dP:::::::::Y888888888P::::::::Yb::::::" -ForegroundColor DarkRed
    write-host " :::::d8:::::::::::Y8888888P::::::::::8b:::::" -ForegroundColor DarkRed
    write-host " :::::88::::::::::::Y88888P:::::::::::88:::::" -ForegroundColor DarkRed
    write-host " :::::Y8baaaaaaaaaa88P:T:Y88aaaaaaaaad8P:::::" -ForegroundColor DarkRed
    write-host " :::::::Y88888888888P::|::Y8888888888P:::::::" -ForegroundColor DarkRed
    write-host " ::::::::::::::::888:::|:::888:::::::::::::::" -ForegroundColor DarkRed
    write-host " :::::::::::::::d8888888888888b::::::::::::::" -ForegroundColor DarkRed
    write-host " :::::::::::::::888888888888888::::::::::::::" -ForegroundColor DarkRed
    write-host " :::::::::::::::888888888888888::::::::::::::" -ForegroundColor DarkRed
    write-host " :::::::::::::::88::88: :88::88::::::::::::::" -ForegroundColor DarkRed
    write-host " :::::::::::::::88::88: :88::88::::::::::::::" -ForegroundColor DarkRed
    write-host " :::::::::::::::88::88: :88::88::::::::::::::" -ForegroundColor DarkRed
    write-host " ::::::::::::::::::::::::::::::::::::::::::::" -ForegroundColor DarkRed 
    write-host "----------------------------------------------" -ForegroundColor DarkGreen `n

    
    
   
   }

Function Frame {
    
    start-sleep -m 400
    cls
    }

Function XEQTD {
    
    write-host "Your program has been " -NoNewline
    write-host "EXECUTED" -ForegroundColor DarkRed 
    SwitchIt
}

    ExeQte ; Index

