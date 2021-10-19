$Today = [DateTime]::Today
$UserSearch = Read-Host -Prompt "Input user to search for"

$ActiveToday = Get-ADComputer -Filter 'LastLogonDate -ge $Today' -Properties LastLogonDate | FT Name

foreach ($Device in $ActiveToday)
{
    if (nsloo) {
        if ((Get-WmiObject Win32_ComputerSystem -ComputerName $Device).Username -eq $UserSearch) {
        Write-Host $Device
        }
    }
}
