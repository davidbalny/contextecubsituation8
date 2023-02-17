# Exercice 1-10 

Clear-Host
$MonFichier = Import-Csv C:\ScriptsPowershell\services.csv -Delimiter ","
$MotService = Read-Host "Quel mot désirez-vous filtrer ?"
foreach ($Ligne in $MonFichier)
{
    if ($Ligne.Name -like "*$MotService*")
    {
    Write-Host -foregroundcolor Green $Ligne.Name $Ligne.Status
    }
    else
    {
    Write-Host $Ligne.Name
    }
}



