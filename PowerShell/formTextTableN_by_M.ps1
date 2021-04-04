<#
 #
 # Main Form Fill, nested info using tbl layout matrix of [N x M] <input type="text" elements
 # in the form below (with inner lvl textbox with id range of "fl_N_M" - "fl_N_M")
 # N set to the nunber of json array elements in json file struct (using json file for data fill)
 # M set to the number of json properties per array object default is 7
 # 
 # Includes json masked text import using '*'.
 # 
 # <table ..
 #  <tbody ..
 #      <tr .. n-child=3
 #        <td .. n-child=1
 #          .
 #          . 
 #         <table ..
 #              <tbody ..
 #                 <tr ..
 #                   <td .. n-child=n <tr .. n-child=8 
 #                                      .
 #                                      .
 #                                    <input type="text" .. id=fl1_n n-child=7  1...(n = 7)
 #
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
$mainjson = $($(Get-Content "${env:USERPROFILE}\Downloads\general_info.json" -Encoding UTF8) | ConvertFrom-Json);
$r=0;
for ($g=1; $g -le $mainjson.Section3.GeneralInfo.Length; $g++) {
 for ($t=1; $t -le 7; $t++) {

switch ($t) {
{$t -eq 1} {
  $elText = "fld$($t)_$($g)";
  $sect3GeneralInfo = Find-SeElement -Driver $Browser -By Id -Selection "${elText}";
  Send-SeKeys -Element $sect3GeneralInfo -Keys $($mainjson.Section3.GeneralInfo[$($r)].IDNumber -replace "^1{1}\*{2}", "77$([Int32]::Parse("22BC", [System.Globalization.NumberStyles]::HexNumber))" -replace "\*{1}(I)$" , "KKI");
 }
{$t -eq 2} {
  $elText = "fl$($t)_$($g)";
  $sect3GeneralInfo = Find-SeElement -Driver $Browser -By Id -Selection "${elText}";
  Send-SeKeys -Element $sect3GeneralInfo -Keys $($mainjson.Section3.GeneralInfo[$($r)].EmpName);
  }
{$t -eq 3} {
  $elText = "fl$($t)_$($g)";
  $sect3GeneralInfo = Find-SeElement -Driver $Browser -By Id -Selection "${elText}";
  Send-SeKeys -Element $sect3GeneralInfo -Keys $($mainjson.Section3.GeneralInfo[$($r)].EmpCode);
  }
{$t -eq 4} {
  $elText = "fl$($t)_$($g)";
  $sect3GeneralInfo = Find-SeElement -Driver $Browser -By Id -Selection "${elText}";
  Send-SeKeys -Element $sect3GeneralInfo -Keys $($mainjson.Section3.GeneralInfo[$($r)].Work1);
  }
{$t -eq 5} {
  $elText = "fl$($t)_$($g)";
  $sect3GeneralInfo = Find-SeElement -Driver $Browser -By Id -Selection "${elText}";
  Send-SeKeys -Element $sect3GeneralInfo -Keys $($mainjson.Section3.GeneralInfo[$($r)].Income1);
  }
{$t -eq 6} {
  $elText = "fl$($t)_$($g)";
  $sect3GeneralInfo = Find-SeElement -Driver $Browser -By Id -Selection "${elText}";
  Send-SeKeys -Element $sect3GeneralInfo -Keys $($mainjson.Section3.GeneralInfo[$($r)].Income2);
  }
{$t -eq 7} {
  $elText = "fl$($t)_$($g)";
  $sect3GeneralInfo = Find-SeElement -Driver $Browser -By Id -Selection "${elText}";
  Send-SeKeys -Element $sect3GeneralInfo -Keys $($mainjson.Section3.GeneralInfo[$($r)].IncomeVal3);
  }
}
 }
 $r++;
}