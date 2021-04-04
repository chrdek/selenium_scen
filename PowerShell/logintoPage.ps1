<#
 #
 # Initial login flow for generic website
 #  ->Open main loginscreen (username,password)
 #    -> login to web application.
 #
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
$mainurl="";(@'
104
116
116
112
115
58
47
47
116
101
115
116
115
105
116
101
46
110
101
116
47
'@ -split "`r`n" -as [int[]]) | %{$mainurl+=($_ -as [char])};
$Browser = Start-SeChrome -Arguments @("Incognito","start-maximized");
Enter-SeUrl $mainurl -Driver $Browser

# Login using username, pass
$usr="";(@'
116
101
115
116
117
115
101
114
110
97
109
101
'@ -split "`r`n" -as [int[]]) | %{$usr+=($_ -as [char])};
$pas="";(@'
115
97
109
112
108
101
112
64
115
115
119
100
49
'@ -split "`r`n" -as [int[]]) | %{$pas+=($_ -as [char])};
$user = "${usr}";
$pass = "${pas}";
$txtuname =  Find-SeElement -Driver $Browser -By CssSelector -Selection "#_username" ;
Send-SeKeys -Element $txtuname -Keys "$($user)";
$txtpassword = Find-SeElement -Driver $Browser -By CssSelector -Selection "#_password";
Send-SeKeys -Element $txtpassword -Keys "$($pass)";

$mainlog = Find-SeElement -Driver $Browser -By CssSelector -Selection "#_login > table > tbody > tr > td > table > tbody > tr > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr:nth-child(4) > td > input:nth-child(1)";
Send-SeClick -Element $mainlog -JavaScriptClick;