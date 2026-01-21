$firstName = Read-Host "Sisesta oma eesnimi"
$lastName = Read-Host "Sisesta oma perenimi"

$userName = "$($firstName).$($lastName)".ToLower()

Write-Host "Kustutav kasutaja on $userName"

try {
    Remove-LocalUser -Name $userName -ErrorAction Stop
    Write-Host "Kasutaja $userName on kustutatud"
}
catch {
    Write-Host "Tekkinud probleem kasutaja kustutamisega"
}