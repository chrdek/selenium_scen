<#
 # 
 # On completed, form submission (select submit button inside a table, click on next button)
 # form layout as below:
 # <table ..
 #  <tbody ..
 #      <tr .. n-child=5
 #        <td .. n-child=1
 #          .
 #          . 
 #        <input type="submit" ..                 # open hidden submit btn.
 #        <input type="submit" .. class="winbtn"  # hidden submit btn.
 # 
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
$sectFinalbtn = Find-SeElement -Driver $Browser -By CssSelector -Selection "body > table > tbody > tr:nth-child(5) > td > table > tbody > tr:nth-child(3) > td > form > table > tbody > tr:nth-child(2) > td > table > tbody > tr:nth-child(3) > td:nth-child(5) > input";
Send-SeClick -Element $sectFinalbtn -JavaScriptClick;
$sectFinalSave = Find-SeElement -Driver $Browser -By CssSelector -Selection "body > table > tbody > tr:nth-child(5) > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr > td > table > tbody > tr > td > table > tbody > tr > td > table > tbody > tr:nth-child(9) > td:nth-child(2) > form > input.winbtn";
Send-SeClick -Element $sectFinalSave -JavaScriptClick;