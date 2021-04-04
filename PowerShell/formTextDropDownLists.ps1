<#
 #
 # Text input fill from json file objects.
 # Form selection by id on text boxes and drop down lists layout as below:
 #  <input type="text" id="" ..
 #     <select id="" ..
 #           .
 #           .
 #           .
 #          <option value="1" ..
 #          <option value="2" ..
 #
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
# Load information for sections 1, 2
$mainjson = $($(Get-Content "${env:USERPROFILE}\general_info.json" -Encoding UTF8) | ConvertFrom-Json);

<# Main Form Auto-Fill, section 1-2. #>
$sect1to2Addr = Find-SeElement -Driver $Browser -By Id -Selection "Id1C1";
$sect1to2AddrNum = Find-SeElement -Driver $Browser -By Id -Selection "Id1C2";
$sect1to2Town = Find-SeElement -Driver $Browser -By Id -Selection "Id2C1";
$sect1to2PostCode = FInd-SeElement -Driver $Browser -By Id -Selection "Id2C2";
$sect1to2PhoneNum = Find-SeElement -Driver $Browser -By Id -Selection "IdC2";

$sect1to2DropDownYN = Find-SeElement -Driver $Browser -By CssSelector -Selection "#Id_1C1DD";
$sect1to2DropDownDaysAmt = Find-SeElement -Driver $Browser -By CssSelector -Selection "#Id_2C1DD";