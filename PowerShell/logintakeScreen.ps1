<# 
 # 
 # Initial login flow for website image to be generated
 #   ->Open main website
 #     -> Open login form
 #        -> login to website main part, click on a 'specific' button
 #           -> take screenshot of whole website part, logout and close browser window.
 #
 # NOTE: screenshot is watermarked with a timestamp (time/date) and an MD5 digest
 # 
 # This script utilizes ImagesUtil module for watermarking process - can be found online at:
 # https://www.powershellgallery.com/packages/ImagesUtil/1.1.0.0
 # 
 #>
Import-Module "$env:ProgramFiles\WindowsPowerShell\Modules\Selenium\3.0.1\Selenium.psd1" -Force
Import-Module "$env:USERPROFILE\Documents\ImagesUtil.psd1" -Force

# navigate to the main browser url
$mainaddress = ".main.test-address.com"; # enter your preferred domain here
$url = "http://www${mainaddress}";

$Browser = Start-SeChrome -Arguments @("Incognito","start-maximized");
Enter-SeUrl $url -Driver $Browser

$mainloginlink = Find-SeElement -Driver $Browser -By CssSelector -Selection "#testId_11100";
Send-Seclick -Element $mainloginlink -JavaScriptClick;

$username = "username" -replace "user","xxxpassx" -replace '0','o' -replace "xx","oo" -replace "name","mea" -replace 'm','k' -replace "e","xxx";
$password = "password" -replace "pass","p@sssample" -replace "word","w0r4sample";

# enter desired username/password pairs
$txtuser =  Find-SeElement -Driver $Browser -By CssSelector -Selection "#test_iduser";
Send-SeKeys -Element $txtuser -Keys "$($username)";
$txtpass = Find-SeElement -Driver $Browser -By CssSelector -Selection "#test_idpassword";
Send-SeKeys -Element $txtpass -Keys "$($password)"

# login to website via logon form
$btnlogin =  Find-SeElement -Driver $Browser -By CssSelector -Selection "#test_idButton1";
Send-SeClick -Element $btnlogin -JavaScriptClick;

# apply necessary action/click buttons and take screenshot when done
$btnapply = Find-SeElement -Driver $Browser -By CssSelector -Selection "#test_idButton2";
Send-SeClick -Element $btnapply -JavaScriptClick;
$img = [Drawing.Bitmap]::FromStream([IO.MemoryStream][Convert]::FromBase64String("$(Invoke-SeScreenshot -Driver $Browser)"));
$img.Save("$((Resolve-Path ".").Path)\website_shot.png");

# add timestamping info/watermark to screenshot
Add-ImageWaterMark -image "$((Resolve-Path ".").Path)\website_shot.png" -signStr "$(Get-Date -Format "hh:mm:ss::ms  yyyy-MM-dd") Digest: $(Convert-NameToMD5 -imgInput ".\wesbite_shot.png")" -defaultoffset 350 -fntsize 12.0 -ovr

# close all and exit browser
Start-Sleep -Milliseconds 1500;
Stop-Process -Name chrome;