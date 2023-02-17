# Exercice 1-8 
# Afficher les services démarrés ou arrêtés au choix de l'utilisateur
# Affichage par Table
# Avec sauvegarde dans un fichier services.csv

function InfoServices($servicesstatus)
{
    Write-Host "Voici la liste désirée :"
    if ($servicesstatus -eq "R")
    {
        $services = Get-Service | Where-Object {$_.status -like "running"}
    }
    else
    {
        $services = Get-Service | Where-Object {$_.status -like "stopped"}
    }
        $services | Format-Table Name, DisplayName, Status
        $services | Export-Csv -Path "C:\ScriptsPowershell\services.csv" -Delimiter ","
        #$services | Out-File C:\ScriptsPowershell\services.csv
    }

$servicesstatus = Read-Host "Désirez-vous la liste des processus démarrés [R] ou en arrêt [S] :"
InfoServices($servicesstatus)



