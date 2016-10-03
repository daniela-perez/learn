Add-Type -AssemblyName presentationCore

#if/else , while, for, switch

#1. hacer que este programa reproduzca todas las canciones del directorio de Songr

$filepath = [uri]"C:\Users\dan\Music\Songr\Lee Hyori- 10 Minutes.mp3"
$wmplayer = New-Object System.Windows.Media.MediaPlayer
$wmplayer.Open($filepath)
Start-Sleep 2 # This allows the $wmplayer time to load the audio file
$duration = $wmplayer.NaturalDuration.TimeSpan.TotalSeconds
$wmplayer.Play()
Start-Sleep $duration
$wmplayer.Stop()
$wmplayer.Close()