# Exercice 1-6 
# Afficher les processus en activité au choix de l'utilisateur grâce à une fonction
# Affichage par Table
# Avec sauvegarde dans un fichier sauvegarde.txt et sauvegarde.csv

function InfoProcessus($processusName)
{
Write-Host "Affichage des processus contenant : $processusName"
$processus = Get-Process | Where-Object {$_.ProcessName -like "*$processusName*"}
$processus | Format-Table Id, Name, Description 
$processus | Out-File C:\ScriptsPowershell\sauvegarde.txt
$processus | Out-File C:\ScriptsPowershell\sauvegarde.csv
}
$processusName = Read-Host "Quel processus désirez-vous afficher ?"
InfoProcessus($processusName)