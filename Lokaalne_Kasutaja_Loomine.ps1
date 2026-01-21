$Eesnimi = Read-Host "Sisesta oma eesnimi"
$Perenimi = Read-Host "Sisesta oma perenimi"

$KasutajaNimi = "$Eesnimi.$Perenimi".ToLower()
$Taisnimi = "$Eesnimi $Perenimi"

Write-Host "Loodav kasutaja on $KasutajaNimi"

$ParoolTekst = "Parool1!"
$KasutajaParool = ConvertTo-SecureString $ParoolTekst -AsPlainText -Force

New-LocalUser -Name $KasutajaNimi -Password $KasutajaParool -FullName $Taisnimi -Description "Loodud skriptiga" -ErrorAction SilentlyContinue

if ($?) {
    Write-Host "Kasutaja $KasutajaNimi loomine õnnestus!" -ForegroundColor Green
} else {
    Write-Host "Tekkinud probleem kasutaja loomisega" -ForegroundColor Red
}