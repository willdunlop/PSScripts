
 ################################################################################
 #########SCRIPT FOR SUPPORT USERS AND TROUBLESHOOT DESKTOP APPLICATIONS#########
 ################################################################################

 # Name: William
 # Email: william.dunlop.1993@gmail.com

 # Description: This script is designed to retrieve information in regards to the software 
 # and hardware installed on the computer system

 # Purpose: This is for exam purposes

 # Revision History: Created on 11/05/2016, 13:55
 #                   Edited on 12/05/2016, 19:45
 #                   Edited on 17/05/2016, 12:20
 #                   Edited on 17/05/2016, 22:25
 #                   Edited on 18/05/2016, 13:17
 #                   Edited on 24/05/2016, 20:10
 #                   Edited on 25/05/2016, 11:45
 #                   Edited on 25/05/2016, 17:29
 #                   Edited on 27/05/2016, 13:36


 # This code is divided into sections marked by headings decorated with the ###HASH KEY###
 # these sections in its order include: Hardware, Software, Network, Utilities and Main
 #                                      
    
    
 $computestr = "."    


 ##################################################################


 ##############
 ###HARDWARE###
 ##############

 # Function Name: sysinfo
 # Created: 11/05/2016
 # Purpose: Retrieve system information

 Function SysInfo {

write-host "******************************" -ForegroundColor Magenta
write-Host "******System Information******" -ForegroundColor Magenta
write-host "******************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi win32_ComputerSystem -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Computer Manufacturer:   " $a.manufacturer
            write-host "Model:                   " $a.model 
            write-host "Total Memory:            " $a.TotalPhysicalMemory 
            write-host "------------------------------" -ForegroundColor Red `n
    }


}


# Function Name: BIOSinfo
# Created: 11/05/2016
# Purpose: Retrieve BIOS information

Function BIOSInfo {
        
write-host "****************************" -ForegroundColor Magenta
write-Host "******BIOS Information******" -ForegroundColor Magenta
write-host "****************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi win32_BIOS -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:    " $a.Manufacturer 
            write-host "Name:            " $a.Name 
            write-host "Version:         " $a.Version 
            write-host "Serial Number:   " $a.SerialNumber
            write-host "------------------------------" -ForegroundColor Red `n

        }

}



# Function Name: CPUinfo
# Created: 11/05/2016
# Purpose: Retrieve the processor/s information


Function CPUInfo {

write-host "***************************" -ForegroundColor Magenta
write-Host "******CPU Information******" -ForegroundColor Magenta
write-host "***************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi win32_processor -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) { 
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:    " $a.Manufacturer 
            write-host "Name:            " $a.Name  
            write-host "Max Clock Speed: " $a.MaxClockSpeed 
            write-host "Device ID:       " $a.DeviceID 
            write-host "------------------------------" -ForegroundColor Red `n

        }

}




# Function Name: RAMinfo
# Created: 11/05/2016
# Purpose: Retrieve the RAM/s information


Function RAMInfo {

write-host "***************************" -ForegroundColor Magenta
write-Host "******RAM Information******" -ForegroundColor Magenta
write-host "***************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_PhysicalMemory -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:   " $a.Manufacturer 
            write-host "Name:           " $a.Name 
            write-host "Capacity:       " $a.Capacity 
            write-host "Speed:          " $a.Speed 
            write-host "Serial Number:  " $a.SerialNumber 
            write-host "------------------------------" -ForegroundColor Red `n

        }

}




# Function Name: VidCardInfo
# Created: 11/05/2016
# Purpose: Retrieve the Video Cards information

Function VidCardInfo {

write-host "**********************************" -ForegroundColor Magenta
write-Host "******Video Card Information******" -ForegroundColor Magenta
write-host "**********************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_VideoController -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:    " $a.AdapterCompatibility 
            write-host "Name:            " $a.Name 
            write-host "Description:     " $a.VideoModeDescription 
            write-host "Video Processor: " $a.VideoProcessor 
            write-host "Status:          " $a.Status 
            write-host "Driver Version:  " $a.DriverVersion 
            write-host "Memory:          " $a.AdapterRAM 
            write-host "Bit Depth:       " $a.CurrentBitsPerPixel 
            write-host "Refresh Rate:    " $a.CurrentRefreshRate 
            write-host "------------------------------" -ForegroundColor Red `n

        }

}


# Function Name: MotherInfo
# Created: 11/05/2016
# Purpose: Retrieve the Motherboards information


Function MotherInfo {
$computestr ="."

write-host "***********************************" -ForegroundColor Magenta
write-Host "******Motherboard Information******" -ForegroundColor Magenta
write-host "***********************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_MotherboardDevice -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
    $collectinfo2 = gwmi -class win32_BaseBoard -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($b in $collectinfo2) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:       " $b.Manufacturer
            write-host "Name:               " $a.Name 
            write-host "Status:             " $a.Status 
            write-host "Primary Bus Type:   " $a.PrimaryBusType 
            write-host "Secondary Bus Type: " $a.SecondaryBusType 
            write-host "Serial Number:      " $b.SerialNumber
            write-host "------------------------------" -ForegroundColor Red `n
         

        }
    }


}

# Function Name: StorInfo
# Created: 11/05/2016
# Purpose: Retrieve the HDD (and/or SDD) information

Function StorInfo {

write-host "*******************************"-ForegroundColor Magenta
write-Host "******Storage Information******" -ForegroundColor Magenta
write-host "*******************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_DiskDrive -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Model:       " $a.Model 
            write-host "Size:        " $a.Size 
            write-host "Partitions:  " $a.Partitions 
            write-host "Device ID:   " $a.DeviceID 
            write-host "------------------------------" -ForegroundColor Red `n
         

        }

}

# Function Name: OpticalInfo
# Created: 11/05/2016
# Purpose: Retrieve the Optical drive information

Function OpticalInfo {

write-host "*******************************"-ForegroundColor Magenta
write-Host "******Optical Information******" -ForegroundColor Magenta
write-host "*******************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_CDROMDrive -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:  " $a.Manufacturer 
            write-host "Drive:         " $a.Drive 
            write-host "Occupied by:   " $a.VolumeName 
            write-host "Type:          " $a.Caption 
            write-host "------------------------------" -ForegroundColor Red `n
         

        }

}

# Function Name: MonitorInfo
# Created: 11/05/2016
# Purpose: Retrieve the RAM/s information

Function MonitorInfo {

write-host "*******************************" -ForegroundColor Magenta
write-Host "******Monitor Information******" -ForegroundColor Magenta
write-host "*******************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_DesktopMonitor -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:  " $a.MonitorManufacturer 
            write-host "Name:          " $a.Name 
            write-host "Device ID:     " $a.DeviceID 
            write-host "Height:        " $a.ScreenHeight 
            write-host "Width:         " $a.ScreenWidth 
            write-host "------------------------------" -ForegroundColor Red `n
         

        }

}

# Function Name: SoundInfo
# Created: 11/05/2016
# Purpose: Retrieve the Sound device information

Function SoundInfo {

write-host "************************************" -ForegroundColor Magenta
write-Host "******Sound Device Information******" -ForegroundColor Magenta
write-host "************************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_SoundDevice -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:  " $a.Manufacturer 
            write-host "Name:          " $a.Name 
            write-host "Status:        " $a.Status 
            write-host "------------------------------" -ForegroundColor Red `n
           
         

        }

}

# Function Name: BatteryInfo
# Created: 11/05/2016
# Purpose: Retrieve the Battery information

Function BatteryInfo {

write-host "*******************************" -ForegroundColor Magenta
write-Host "******Battery Information******" -ForegroundColor Magenta
write-host "*******************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_Battery -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Name:               " $a.Name 
            write-host "Status:             " $a.Status 
            write-host "Description:        " $a.Description 
            write-host "Run Time Total:     " $a.EstimatedRunTime
            write-host "Run Time Remaining: " $a.EstimatedChargeRemaining
            write-host "Voltage:            " $a.DesignVoltage 
            write-host "------------------------------" -ForegroundColor Red `n
                     
         

        }

}


# Function Name: HWAllInfo
# Created: 17/05/2016
# Purpose: Retrieve all the hardware information

Function HWAllInfo {

    sysinfo ; BIOSInfo ; CPUInfo ; RAMInfo ; VidCardInfo ; MotherInfo ; StorInfo ; OpticalInfo ; MonitorInfo ; SoundInfo ; BatteryInfo

 }





#######################################################################


##############
###SOFTWARE###
##############


# Function Name: OSInfo
# Created: 11/05/2016
# Purpose: Retrieve the operating system information

Function OSInfo {

write-host "****************************************" -ForegroundColor Magenta
write-Host "******Operating System Information******" -ForegroundColor Magenta
write-host "****************************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_OperatingSystem -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
                        
            write-host "------------------------------" -ForegroundColor Red
            write-host "Manufacturer:    " $a.Manufacturer
            write-host "Name:            " $a.Caption 
            write-host "Build:           " $a.build 
            write-host "Architecture:    " $a.OSArchitecture 
            write-host "Version:         " $a.Version
            write-host "Serial Number:   " $a.SerialNumber
            write-host "Number of Users: " $a.NumberOfUsers
            write-host "------------------------------" -ForegroundColor Red `n       
         

        }

}


# Function Name: InstalledInfo
# Created: 11/05/2016
# Purpose: Retrieve information for installed software

Function InstalledInfo {

write-host "******************************************" -ForegroundColor Magenta
write-Host "******Installed Software Information******" -ForegroundColor Magenta
write-host "******************************************" -ForegroundColor Magenta `n

    write-host "------------------------------" -ForegroundColor Red
    Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |  Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize 
    write-host "------------------------------" -ForegroundColor Red `n


}


# Function Name: ServiceInfo
# Created: 11/05/2016
# Purpose: Retrieve information on all Services

Function ServiceInfo {

write-host "********************************"-ForegroundColor Magenta
write-Host "******Services Information******" -ForegroundColor Magenta
write-host "********************************" -ForegroundColor Magenta `n

    write-host "------------------------------" -ForegroundColor Red
    $serv=Get-Service
    ForEach ($s in $serv) {
        if ($s.Status -eq "Running") {
            Write-host $s.DisplayName -ForegroundColor "green"
            write-host $s.Status -ForegroundColor "green" `n
        }

        else {
                Write-host $s.DisplayName -ForegroundColor "red" 
                write-host $s.Status -ForegroundColor "red" `n
                }
                                          
        } 
        


}


# Function Name: ProcessInfo
# Created: 11/05/2016
# Purpose: Retrieve information on all Processes

Function ProcessInfo {

write-host "*********************************" -ForegroundColor Magenta
write-Host "******Processes Information******" -ForegroundColor Magenta
write-host "*********************************" -ForegroundColor Magenta `n

    
    get-process | Select-Object Name,fileversion | Format-Table -Autosize 
    
    write-host " "  


}

# Function Name: PSPInfo
# Created: 11/05/2016
# Purpose: Retrieve information on installed PowerShell providers

Function PSPInfo {

write-host "********************************" -ForegroundColor Magenta
write-Host "******PowerShell Providers******" -ForegroundColor Magenta
write-host "********************************" -ForegroundColor Magenta `n
Get-PSProvider
start-sleep -s 10 
write-host "-----------------------------------" -ForegroundColor red `n

}

# Function Name: DriveInfo
# Created: 17/05/2016
# Purpose: Shows 'running' and 'stopped' installed drivers on the system

Function DriveInfo {

write-host "*******************************"-ForegroundColor Magenta
write-Host "******Drivers Information******" -ForegroundColor Magenta
write-host "*******************************" -ForegroundColor Magenta `n

    write-host "------------------------------" -ForegroundColor Red
    $driv=gwmi win32_SystemDriver
    ForEach ($d in $driv) {
        if ($d.State -eq "Running") {
            Write-host  $d.DisplayName -ForegroundColor "green"
            write-host "State:  " $d.state -ForegroundColor "green"
            write-host "Status: " $d.status -ForegroundColor "green" `n
        }

        else {
                Write-host  $d.DisplayName -ForegroundColor "red"
                write-host "State:  " $d.state -ForegroundColor "red"
                write-host "Status: " $d.status -ForegroundColor "red" `n
                }
                                          
        } 
        


}

# Function Name: CodecInfo
# Created: 17/05/2016
# Purpose: Shows installed audio and video codecs on the system

Function CodecInfo {

write-host "*****************************************" -ForegroundColor Magenta
write-Host "******Video/Audio Codec Information******" -ForegroundColor Magenta
write-host "*****************************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_CodecFile -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {

        write-host "Name:    " $a.name 
        write-host "Version: " $a.version `n
        }
    }


# Function Name: SWAllInfo
# Created: 17/05/2016
# Purpose: Displays all software information

Function SWAllInfo {
   

    OSInfo ; InstalledInfo ; ServiceInfo ; ProcessInfo ; DriveInfo ; CodecInfo 
    }


###########################################################################


#############
###NETWORK###
#############

# Function Name: NetInfo
# Created: 11/05/2016
# Purpose: Retrieve the Network information

Function NetInfo {

write-host "*******************************" -ForegroundColor Magenta
write-Host "******Network Information******" -ForegroundColor Magenta
write-host "*******************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_NetworkAdapter -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Device ID:    " $a.DeviceID 
            write-host "Name:         " $a.Name 
            write-host "Adapter Type: " $a.AdapterType 
            write-host "MAC Address:  " $a.MACAddress 
            write-host "Speed:        " $a.Speed 
            write-host "------------------------------" -ForegroundColor Red `n

        }

}


# Function Name: NProtInfo
# Created: 17/05/2016
# Purpose: Represents a network protocol and its charecteristics

Function NProtInfo {

write-host "****************************************" -ForegroundColor Magenta
write-Host "******Network Protocol Information******" -ForegroundColor Magenta
write-host "****************************************" -ForegroundColor Magenta `n

    $collectinfo = gwmi -class win32_NetworkProtocol -Namespace "root\CimV2" -ComputerName $computestr
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Type:   " $a.Caption 
            write-host "Name:   " $a.Name
            write-host "Status: " $a.Status
            write-host "------------------------------" -ForegroundColor Red `n
            }
    }

# Function Name: IPConInfo
# Created: 17/05/2016
# Purpose: retrieves IP Configuration details

Function IPConInfo {

write-host "****************************************" -ForegroundColor Magenta
write-Host "******IP Configuration Information******" -ForegroundColor Magenta
write-host "****************************************" -ForegroundColor Magenta `n

    $collectinfo = Get-NetIPConfiguration
        ForEach ($a in $collectinfo) {
            
            write-host "------------------------------" -ForegroundColor Red
            write-host "Type:        " $a.InterfaceAlias 
            write-host "Name:        " $a.InterfaceDescription
            write-host "Net Profile: " $a.NetProfile.Name
            write-host "IPv4:        " $a.IPv4DefaultGateway
            write-host "IPv6:        " $a.IPv6DefaultGateway
            write-host "DNS Server:  " $a.DNSServer
            write-host "------------------------------" -ForegroundColor Red `n
            }
    }

# Function Name: NWAllInfo
# Created: 17/05/2016
# Purpose: Displays all Network functions

Function NWAllInfo {

    NetInfo ; NProtInfo ; IPConInfo

    }



#############################################################################

#################
####UTILITIES####
#################

# Function Name: Begin-msinfo32
# Created: 25/05/2016
# Purpose: Opens the 'msconfig' application



##############################################################################

############
####MAIN####
############

$HWFunc= ("System = 1", "BIOS = 2", "CPU = 3", "RAM = 4", "Video Card = 5", "Motherboard = 6", "Storage = 7", "Optical Drive = 8", "Monitor = 9", "Sound = 10", "Battery = 11", "All Hardware = 12")
$SWFunc = ("Operating System = 13", "Installed Software = 14", "All Services = 15", "Processes = 16", "Powershell Providers = 17", "Installed Drivers = 18", "Installed Codecs = 19", "All Software = 20")
$NWFunc = ("Network Card = 21", "Network Protocols = 22", "IP Configuration = 23", "All Network = 24")
$UTFunc = ("System Information Tool = 25", "Direct X Diagnostic Tool = 26", "Performance Monitor = 27", "Computer Management = 28", "Defrag and Optimize Drives = 29", "Task Schedular = 30", "Diskc Clean-Up = 31")

Function Welcome {
    
    cls
    $Sound = New-object System.Media.SoundPlayer "D:\Tafe\Sathi\DatSound.wav"
    $sound.Play()
    write-host "-------------------------------------------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "-------------------------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "#------------------------------------------------" -ForegroundColor Magenta
    write-Host "#-----WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "#------------------------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "##-----------------------------------------------" -ForegroundColor Magenta
    write-Host "##----WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "##-----------------------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "###----------------------------------------------" -ForegroundColor Red
    write-Host "###---WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "###----------------------------------------------" -ForegroundColor Red `n
    Frame
    write-host "####---------------------------------------------" -ForegroundColor Red
    write-Host "####--WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "####---------------------------------------------" -ForegroundColor Red `n
    Frame
    write-host "#####--------------------------------------------" -ForegroundColor Red
    write-Host "#####-WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "#####--------------------------------------------" -ForegroundColor Red `n
    Frame
    write-host "######-------------------------------------------" -ForegroundColor Magenta
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "######-------------------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "#######------------------------------------------" -ForegroundColor Magenta
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "#######------------------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "########-----------------------------------------" -ForegroundColor Magenta
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "########-----------------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "#########----------------------------------------" -ForegroundColor Red
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "#########----------------------------------------" -ForegroundColor Red `n
    Frame
    write-host "##########---------------------------------------" -ForegroundColor Red
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "##########---------------------------------------" -ForegroundColor Red `n
    Frame
    write-host "###########--------------------------------------" -ForegroundColor Red
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "###########--------------------------------------" -ForegroundColor Red `n
    Frame
    write-host "############-------------------------------------" -ForegroundColor Magenta
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "############-------------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "#############------------------------------------" -ForegroundColor Magenta
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "#############------------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "##############-----------------------------------" -ForegroundColor Magenta
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "##############-----------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "###############----------------------------------" -ForegroundColor Red
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "###############----------------------------------" -ForegroundColor Red `n
    Frame
    write-host "################---------------------------------" -ForegroundColor Red
    write-Host "######WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "################---------------------------------" -ForegroundColor Red `n
    Frame
    write-host "-################--------------------------------" -ForegroundColor Red
    write-Host "-#####WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "-################--------------------------------" -ForegroundColor Red `n
    Frame
    write-host "--################-------------------------------" -ForegroundColor Magenta
    write-Host "--####WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "--################-------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "---################------------------------------" -ForegroundColor Magenta
    write-Host "---###WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "---################------------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "----################-----------------------------" -ForegroundColor Magenta
    write-Host "----##WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "----################-----------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "-----################----------------------------" -ForegroundColor Red
    write-Host "-----#WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "-----################----------------------------" -ForegroundColor Red `n
    Frame
    write-host "------################---------------------------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "------################---------------------------" -ForegroundColor Red `n
    Frame
    write-host "-------################--------------------------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "-------################--------------------------" -ForegroundColor Red `n
    Frame
    write-host "--------################-------------------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "--------################-------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "---------################------------------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "---------################------------------------" -ForegroundColor Magenta `n
    Frame
    write-host "----------################-----------------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "----------################-----------------------" -ForegroundColor Magenta `n
    Frame
    write-host "-----------################----------------------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "-----------################----------------------" -ForegroundColor Red `n
    Frame
    write-host "------------################---------------------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "------------################---------------------" -ForegroundColor Red `n
    Frame
    write-host "-------------################--------------------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "-------------################--------------------" -ForegroundColor Red `n
    Frame
    write-host "--------------################-------------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "--------------################-------------------" -ForegroundColor Magenta `n
    Frame
    write-host "---------------################------------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "---------------################------------------" -ForegroundColor Magenta `n
    Frame
    write-host "---------------################------------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "---------------################------------------" -ForegroundColor Magenta `n
    Frame
    write-host "----------------################-----------------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "----------------################-----------------" -ForegroundColor Red `n
    Frame
    write-host "-----------------################----------------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "-----------------################----------------" -ForegroundColor Red `n
    Frame
    write-host "------------------################---------------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "------------------################---------------" -ForegroundColor Red `n
    Frame
    write-host "-------------------################--------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "-------------------################--------------" -ForegroundColor Magenta `n
    Frame
    write-host "--------------------################-------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "--------------------################-------------" -ForegroundColor Magenta `n
    Frame
    write-host "---------------------################------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "---------------------################------------" -ForegroundColor Magenta `n
    Frame
    write-host "----------------------################-----------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "----------------------################-----------" -ForegroundColor Red `n
    Frame
    write-host "-----------------------################----------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "-----------------------################----------" -ForegroundColor Red `n
    Frame
    write-host "------------------------################---------" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Red
    write-host "------------------------################---------" -ForegroundColor Red `n
    Frame
    write-host "-------------------------################--------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "-------------------------################--------" -ForegroundColor Magenta `n
    Frame
    write-host "--------------------------################-------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "--------------------------################-------" -ForegroundColor Magenta `n
    Frame
    write-host "---------------------------################------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "---------------------------################------" -ForegroundColor Magenta `n
    Frame
    write-host "----------------------------################-----" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT#-----" -ForegroundColor Red
    write-host "----------------------------################-----" -ForegroundColor Red `n
    Frame
    write-host "-----------------------------################----" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT##----" -ForegroundColor Red
    write-host "-----------------------------################----" -ForegroundColor Red `n
    Frame
    write-host "------------------------------################---" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT###---" -ForegroundColor Red
    write-host "------------------------------################---" -ForegroundColor Red `n
    Frame
    write-host "-------------------------------################--" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT####--" -ForegroundColor Magenta
    write-host "-------------------------------################--" -ForegroundColor Magenta `n
    Frame
    write-host "--------------------------------################-" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT#####-" -ForegroundColor Magenta
    write-host "--------------------------------################-" -ForegroundColor Magenta `n
    Frame
    write-host "---------------------------------################" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Magenta
    write-host "---------------------------------################" -ForegroundColor Magenta `n
    Frame
    write-host "----------------------------------###############" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Red
    write-host "----------------------------------###############" -ForegroundColor Red `n
    Frame
    write-host "-----------------------------------##############" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Red
    write-host "-----------------------------------##############" -ForegroundColor Red `n
    Frame
    write-host "------------------------------------#############" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Red
    write-host "------------------------------------#############" -ForegroundColor Red `n
    Frame
    write-host "-------------------------------------############" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Magenta
    write-host "-------------------------------------############" -ForegroundColor Magenta `n
    Frame
    write-host "--------------------------------------###########" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Magenta
    write-host "--------------------------------------###########" -ForegroundColor Magenta `n
    Frame
    write-host "---------------------------------------##########" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Magenta
    write-host "---------------------------------------##########" -ForegroundColor Magenta `n
    Frame
    write-host "----------------------------------------#########" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Red
    write-host "----------------------------------------#########" -ForegroundColor Red `n
    Frame
    write-host "-----------------------------------------########" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Red
    write-host "-----------------------------------------########" -ForegroundColor Red `n
    Frame
    write-host "------------------------------------------#######" -ForegroundColor Red
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Red
    write-host "------------------------------------------#######" -ForegroundColor Red `n
    Frame
    write-host "-------------------------------------------######" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT######" -ForegroundColor Magenta
    write-host "-------------------------------------------######" -ForegroundColor Magenta `n
    Frame
    write-host "--------------------------------------------#####" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT-#####" -ForegroundColor Magenta
    write-host "--------------------------------------------#####" -ForegroundColor Magenta `n
    Frame
    write-host "---------------------------------------------####" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT--####" -ForegroundColor Magenta
    write-host "---------------------------------------------####" -ForegroundColor Magenta `n
    Frame
    write-host "----------------------------------------------###" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT---###" -ForegroundColor Magenta
    write-host "----------------------------------------------###" -ForegroundColor Magenta `n
    Frame
    write-host "-----------------------------------------------##" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT----##" -ForegroundColor Magenta
    write-host "-----------------------------------------------##" -ForegroundColor Magenta `n
    Frame
    write-host "------------------------------------------------#" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT-----#" -ForegroundColor Magenta
    write-host "------------------------------------------------#" -ForegroundColor Magenta `n
    Frame
    write-host "-------------------------------------------------" -ForegroundColor Magenta
    write-Host "------WELCOME TO WILL'S TROUBLESHOOT SCRIPT------" -ForegroundColor Magenta
    write-host "-------------------------------------------------" -ForegroundColor Magenta `n
    
    Index
    
}

Function Frame {
    Start-Sleep -m 75
    cls
    }

Function Index {

write-host "-----------------------------------------------" -ForegroundColor Red
Write-Host "Enter a number in order to view it's properties " -ForegroundColor DarkGray 
write-host "-----------------------------------------------" -ForegroundColor Red `n

    Write-Host "--------------" -ForegroundColor Gray -NoNewline `t `t `t ; Write-Host "--------------" -ForegroundColor Gray
    Write-Host "***HARDWARE***" -ForegroundColor Gray -NoNewline `t `t `t ; Write-Host "***SOFTWARE***" -ForegroundColor Gray
    Write-Host "--------------" -ForegroundColor Gray -NoNewline `t `t `t ; Write-Host "--------------" -ForegroundColor Gray `n
    
    write-host "System = 1                      Operating System = 13"
    write-host "BIOS = 2                        Installed Software = 14"
    write-host "CPU =3                          All Services = 15"
    write-host "RAM = 4                         Processes = 16"
    write-host "Video Card = 5                  Powershell Providers = 17"
    write-host "Motherboard = 6                 Installed Drivers = 18"
    write-host "Storage = 7                     Installed Codecs = 19"
    write-host "Optical Drive = 8               All Software = 20"
    write-host "Monitor = 9"
    write-host "Sound = 10" 
    write-host "Battery = 11" 
    write-host "All Hardware = 12" `n
    
    Write-Host "-------------" -ForegroundColor Gray -NoNewline `t `t `t ; Write-Host "---------------" -ForegroundColor Gray
    Write-Host "***NETWORK***" -ForegroundColor Gray -NoNewline `t `t `t ; Write-Host "***UTILITIES***" -ForegroundColor Gray
    Write-Host "-------------" -ForegroundColor Gray -NoNewline `t `t `t ; Write-Host "---------------" -ForegroundColor Gray `n

    write-host "Network Card = 21               System Information Tool = 25"
    write-host "Network Protocols = 22          Direct X Diagnostic Tool = 26"
    write-host "IP Configuration = 23           Performance Monitor = 27"
    write-host "All Network = 24                Computer Management = 28"
    write-host "                                Defrag and Optimize Drives = (WIP)"
    write-host "                                Task Schedular = 30"
    write-host "                                Disk Clean-up = 31" `n
    
    write-host "--------------------------------------------------" -ForegroundColor Red 
    Write-Host "Type"-ForegroundColor Gray -NoNewline ; write-host " 'Index'" -ForegroundColor Cyan -NoNewline ; write-host " to view this list again" -ForegroundColor Gray
    write-host "--------------------------------------------------" -ForegroundColor Red `n

    NumSelect

}
    





Function NumSelect {

    write-host "Pick a number or use [I] to view the index" -ForegroundColor Red
    write-host "Select [S] to stop" -ForegroundColor Red `n
    write-host "Type [SG] for ScriptGrab" -ForegroundColor DarkGreen

    switch (Read-Host "ENTER NUMBER ")  
        {
        #Hardware
            1 {sysinfo ; NumSelect}
            2 {BIOSInfo ; NumSelect}
            3 {CPUInfo ; NumSelect}
            4 {RAMInfo ; NumSelect}
            5 {VidCardInfo ; NumSelect}
            6 {MotherInfo ; NumSelect}
            7 {StorInfo ; NumSelect}
            8 {OpticalInfo ; NumSelect}
            9 {MonitorInfo ; NumSelect}
            10 {SoundInfo ; NumSelect}
            11 {BatteryInfo ; NumSelect}
            12 {HWAllInfo ; NumSelect}
        #Software
            13 {OSInfo ; NumSelect}
            14 {InstalledInfo ; NumSelect}
            15 {ServiceInfo ; NumSelect}
            16 {ProcessInfo ; NumSelect}
            17 {PSPInfo ; NumSelect}
            18 {DriveInfo ; NumSelect}
            19 {CodecInfo ; NumSelect}
            20 {SWAllInfo ; NumSelect}
        #Network
            21 {NetInfo ; NumSelect}
            22 {NProtInfo ; NumSelect}
            23 {IPConInfo ; NumSelect}
            24 {NWAllInfo ; NumSelect}
        #Utilities
            25 {Start-Process C:\WINDOWS\system32\msinfo32.exe ; Numselect} #system info Diagnostics
            26 {Start-Process C:\WINDOWS\system32\dxdiag.exe ; NumSelect} #Direct x Diagnostics
            27 {start-process C:\WINDOWS\system32\perfmon.exe ; NumSelect} #Performance Monitor
            28 {start-process C:\WINDOWS\system32\compmgmt.msc ; Numselect} #Computer Management
            29 {start-process C:\WINDOWS\system32\dfrgui.exe ; Numselect} #Defrag and optimize drives
            30 {start-process C:\WINDOWS\system32\taskschd.msc ; NumSelect} #task Schedular
            31 {start-process C:\WINDOWS\system32\cleanmgr.exe ; NumSelect} #Disk Clean-Up


            "I" {Index ; NumSelect}
            "SG" {Invoke-Expression "C:\Users\Dynat\Desktop\Programs\MyScripts\ScriptGrab.ps1"}
            "S" { write-host " "  
                 write-host "Type" -ForegroundColor Gray -NoNewline ; Write-host " 'Index'" -ForegroundColor Cyan -NoNewline ; write-host " if you wish to start over" -ForegroundColor Gray ; break } 

            default {write-host "INVALID! Select a number from the index" -BackgroundColor Red -ForegroundColor Black ; NumSelect}

            
                       
      }
}


# Function Again {
#
#    write-host "Would you like to select another number?" 
#    write-host "[Y] = Yes"
#    write-host "[N] = No" 
#    write-host "[I] = Index"
#    
#    switch (Read-Host " " )
#    
#        {
#            "Y" {NumSelect}
#            "N" { write-host " "  
#                write-host "Type 'Index' if you wish to start over" -ForegroundColor Cyan } 
#            "I" {Index}   
#            default {write-host "INVALID!" -BackgroundColor Red -ForegroundColor Black ; Again}
#
#        }
#
#    }


    cls
Welcome 