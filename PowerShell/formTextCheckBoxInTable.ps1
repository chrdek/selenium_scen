<#
 # 
 # Main Form Auto-Fill, section 5 (checking a single checkbox inside a table)
 # form layout as below:
 # <table ..
 #  <tbody ..
 #      <tr .. n-child=5
 #        <td .. n-child=1
 #          .
 #          . 
 #        <input type="checkbox" id="" ..
 # 
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
$sect5 = Find-SeElement -Driver $Browser -By CssSelector -Selection "body > table > tbody > tr:nth-child(5) > td > table > tbody > tr:nth-child(3) > td > form > table > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td:nth-child(4) > input";
Send-SeClick -Element $sect5 -JavaScriptClick;
$sect5ChkBox = Find-SeElement -Driver $Browser -By Id -Selection "sect5C1";
Send-SeClick -Element $sect5ChkBox -JavaScriptClick;