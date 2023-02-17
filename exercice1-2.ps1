# Exercice 1-2 
# Afficher les processus "svchost" en activité

Get-Process | Where-Object {$_.ProcessName -like "svchost"}