# Exercice 1-9 
# Afficher les services démarrés ou arrêtés au choix de l'utilisateur
# Affichage par Table
# Avec sauvegarde dans un fichier services.csv

Clear-Host
$MonFichier = Import-Csv C:\ScriptsPowershell\services.csv -Delimiter ","
foreach ($Ligne in $MonFichier)
{
    if ($Ligne.Name -like "*system*")
    {
    Write-Host -foregroundcolor Green $Ligne.Name $Ligne.Status
    }
    else
    {
    Write-Host $Ligne.Name
    }
}



