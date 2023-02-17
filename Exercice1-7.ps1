# Exercice 1-7  
# Afficher les services démarrés
# Affichage par Table
# Avec sauvegarde dans un fichier services.csv

$services = Get-Service | Where-Object {$_.status -like "running"}
$services | Format-Table Name, DisplayName, Status
$services | Out-File C:\ScriptsPowershell\services.csv


