# Exercice 1-3 
# Afficher les processus "svchost" en activité avec les paramètres Nom et Identifiant 
# Affichage par Table

$processus = Get-Process | Where-Object {$_.ProcessName -like "svchost"}
$processus | Format-Table Id, Name, Description 