<#
 #
 # Selection list element based on a file list of dates
 #  -> Open main list of dates.
 #    -> Read manual year input (format:YYYY)
 #    -> Click href element based on year input within range.
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force

# Select appropriate year from JSON year data (2008-2020)
$year = Read-Host "Enter year version [2008-2020] ";
$yearFrom =$(Get-Content "$env:USERPROFILE\YYYY_data.json" | ConvertFrom-Json) | Select -ExpandProperty $("Year${year}");

<#
 # 
 # Retrieve, click link element with partial match of the form
 # where YYYY = manual input.
 # <a href=https://querystring?=YYYY ..
 #   .
 #   .
 #
 #>
$yyyyEl = Find-SeElement -Driver $Browser -By PartialLinkText -Selection "$($yearFrom)";
Send-SeClick -Element $yyyyEl -JavaScriptClick;