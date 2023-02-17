# Exercice 1-5 
# Afficher les processus en activité au choix de l'utilisateur grâce à une fonction
# Affichage par Table

function InfoProcessus($processusName)
{
Write-Host "Affichage des processus contenant : $processusName"
$processus = Get-Process | Where-Object {$_.ProcessName -like "*$processusName*"}
$processus | Format-Table Id, Name, Description 
}
$processusName = Read-Host "Quel processus désirez-vous afficher ?"
InfoProcessus($processusName)