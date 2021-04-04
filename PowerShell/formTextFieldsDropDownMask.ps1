<#
 # 
 # Main Form Auto-Fill, section 7 (popup window inner selection(s)).
 # form layout as below:
 # <table ..
 #  <tbody ..
 #      <tr .. n-child=5
 #        <td .. n-child=3
 #          .
 #          .
 #        <input type="text" id="f*_1" .. 
 #        <select id="" ..
 #           .
 #           .
 #           .
 #           <option id="" value="testvalue" .. 
 #           <option id="" value="testvalue2" ..
 #                         .
 #                         .
 #                         .
 #  Includes data unmasking for imported json text for dropdown lists via  '*'.
 #
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
# Load information for section 7, sec info.
$mainjson = $($(Get-Content "${env:USERPROFILE}\general_info.json" -Encoding UTF8) | ConvertFrom-Json);
$sect7main = Find-SeElement -Driver $Browser -By CssSelector -Selection "body > table > tbody > tr:nth-child(5) > td > table > tbody > tr:nth-child(3) > td > form > table > tbody > tr:nth-child(2) > td > table > tbody > tr:nth-child(4) > td:nth-child(2) > input:nth-child(3)";
Send-SeClick -Element $sect7main -JavascriptClick;

$sect7Name = Find-SeElement -Driver $Browser -By Id -Selection "f2_1";
Send-SeKeys -Element $sect7Name -Keys "PlaceHolder Text 29";
$sect7Code = Find-SeElement -Driver $Browser -By Id -Selection "f3_1";
Send-SeKeys -Element $sect7Code -Keys "1";
$sect7AMNT = Find-SeElement -Driver $Browser -By Id -Selection "f4_1";
Send-SeKeys -Element $sect7AMNT -Keys "1";

$sect7AMNTRep = Find-SeElement -Driver $Browser -By Id -Selection "f6_1";
Send-SeKeys -Element $sect7AMNTRep -Keys "0";

$sect7DateRec = Find-SeElement -Driver $Browser -By Id -Selection "f7_1";
Send-SeKeys -Element $sect7DateRec -Keys "01/01/2010";
$sect7DropDown1 = Find-SeElement -Driver $Browser -By Id -Selection "f9_1";
Send-SeKeys -Element $sect7DropDown1 -Keys "testvalue";
## Data un masking ops sect 7 - 1 (general sec. info)
$sect71 = Find-SeElement -Driver $Browser -By Id -Selection "fldE10_1";
Send-SeKeys -Element $sect71 -Keys $($mainjson.Section7.IDCODE -replace "^\*{6}","89191900P" -replace "\*{7,}$", "8001K00" -replace "800111","77779000");
## Data un masking (optional info).
$mainjson.Section7.PaymentCode -replace "^\*{4}","JJGGU1" -replace "(U){1}","JH" -replace "^J{1,}","" -replace "\*{1}$","97680RP" -replace "976","8991"[1];