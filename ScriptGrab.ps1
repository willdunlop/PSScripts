#################
###SCRIPT GRAB###
#################

# Purpose     : Will execute scripts from the switched, genereally stored in the 'MyScripts' folder
# Created on  : 27/05/2016, 21:30


Function ScriptGrab {

$Dte = (get-date -uFormat "%A, %dth %h %Y - %l:%M %p")
     
    Function Greeting {
        
        
      $strTime = Get-Date -UFormat '%H'
      [int]$intTime = [convert]::ToInt32($strTime)
    
        if($intTime -le 6) {
            write-host "Shouldn't you be in bed?"
            write-host "Must be busy times, GOOD LUCK!!" `n
            }

        elseif($intTime -le 12) {
            write-host "Good morning William" `n
            }

        elseif($intTime -le 18) {
            write-host "Good afternoon William" `n
            }

        elseif($intTime -le 24) {
            write-host "Good evening William" `n
            }

        
        }

	write-host " "		
    write-host "       ░░░▒▒▒▒▓▓▓█████████▓▓▓▒▒▒▒░░     " -ForegroundColor DarkCyan
	write-host "     ################################    " -ForegroundColor DarkCyan
    write-host "    ############# SCRIPT #############   " -ForegroundColor DarkCyan
    write-host "   ############### GRAB ###############  " -ForegroundColor DarkCyan 
	write-host "  ###################################### " -ForegroundColor DarkCyan
    write-host " ░░░░░▒▒▒▒▒▒▓▓▓▓▓████████▓▓▓▓▓▒▒▒▒▒▒░░░░░" -ForegroundColor DarkCyan `n


    Greeting
        
    
    write-host "Today is $Dte" `n

    Write-host "What script would you like to run?" -ForegroundColor Red
    Write-host " " 
    write-host "-------------------" -ForegroundColor red `n
    write-host "Troubleshoot"
    write-host "Executioner"
    write-host "Atom" `n
    write-host "Type [Q] to quit" -ForegroundColor DarkRed
    write-host "-------------------" -ForegroundColor red `n

    write-host "....you need to write some more scripts :\" -Foregroundcolor DarkGray `n

    }

Function Request {
    switch (read-host "¯\_(o.o)_/¯") {
        
        "Troubleshoot"{invoke-expression "C:\Users\Dynat\Desktop\Programs\MyScripts\Troubleshooting\ScriptActivityV9-Animated.ps1"}
        "Executioner" {invoke-expression "C:\Users\Dynat\Desktop\Programs\MyScripts\Executioner.ps1"}
        "Atom" {invoke-expression "C:\Users\Dynat\Desktop\Programs\MyScripts\AtomLaunchScaled"}
        "Q" {
            write-host "Are you sure you want to quit?"
            write-host "[Y] Yes   [N] No     [M] Maybe"

            switch (read-host " ") {
                
                "y" {Break}
                "n" {Request}
                "m" {start-sleep -s 1
                     write-host "  ." -NoNewline
                     start-sleep -s 1
                     write-host "  ." -NoNewline
                     start-sleep -s 1
                     write-host "  ." `n
                     start-sleep -s 2
                     write-host "The fuck is wrong with you?!?" -ForegroundColor Red 
                     Request}
                default {Request}
                }
            }


        default{write-host "TRY AGAIN FOO!" -BackgroundColor Red -ForegroundColor Black; Request}
        }
	}



ScriptGrab ; Request
