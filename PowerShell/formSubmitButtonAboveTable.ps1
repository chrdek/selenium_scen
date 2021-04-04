<#
 #
 # Main table layout click on submit button above a table
 # form layout as below:
 # <table ..
 #  <tbody ..
 #      <tr .. n-child=3
 #        <td .. n-child=1
 #          .
 #          . 
 #        <input type="submit" ..
 #
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
$sect3 = Find-SeElement -Driver $Browser -By CssSelector -Selection "body > table > tbody > tr:nth-child(5) > td > table > tbody > tr:nth-child(3) > td > form > table > tbody > tr:nth-child(8) > td > table > tbody > tr:nth-child(2) > td:nth-child(2) > input";
Send-SeClick -Element $sect3 -JavaScriptClick;