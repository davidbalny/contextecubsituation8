# Exercice 1-4 
# Afficher les processus en activité au choix de l'utilisateur
# Affichage par Table

$processusName = Read-Host "Quel processus désirez-vous afficher ?"
$processus = Get-Process | Where-Object {$_.ProcessName -like "*$processusName*"}
$processus | Format-Table Id, Name, Description 