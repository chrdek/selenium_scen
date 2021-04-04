<# 
 # 
 # Main table text fields fill section 1 to 2 from json parsed file.
 # Data unmasking on phone text field (format:"NN******" N=numbers [0-9])
 # 
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
# Load information for sections 1, 2
$mainjson = $($(Get-Content "${env:USERPROFILE}\Downloads\general_info.json" -Encoding UTF8) | ConvertFrom-Json);
Send-SeKeys -Element $sect1to2Addr -Keys $mainjson.Section12.AddressNew;
Send-SeKeys -Element $sect1to2AddrNum -Keys $mainjson.Section12.AddressNumNew;
Send-Sekeys -Element $sect1to2PostCode -Keys $mainjson.Section12.AreaCodeNew;
Send-SeKeys -Element $sect1to2Town -Keys $mainjson.Section12.TownNew;

# Phone number sections 1, 3.
Send-SeKeys -Element $sect1to3PhoneNum -Keys $($mainjson.Section12.MobilePhoneNew -replace "^(0){3}(\*){2}","10" -replace "\*{3}$","111");

$sampleStr1=""; $(@(323,93,91) |%{$sampleStr1+=$_ -as [char]})
Send-SeKeys -Element $sect1to3elDropDownYN -Keys "$($sampleStr1)";

$sampleStr2=""; $(@(391,431,741,111,89,88,73,41,341,219,943) |%{$sampleStr2+=$_ -as [char]})
Send-SeKeys -Element $sect1to3elDropDownDaysAmt -Keys "$($sampleStr2)";