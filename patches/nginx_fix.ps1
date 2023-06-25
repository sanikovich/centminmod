#!/usr/bin/env pwsh
<#
.SYNOPSIS
    Fix problem with http2 parameter deprecation
.DESCRIPTION
    Find string:
                listen 443 ssl http2;"
    and replace:
                listen 443 ssl;
                http2 on;
.NOTES
  Version : 0.0.1 -

#>
[regex]$varFind = "([^\S\r\n])*listen 443 ssl http2;"
$varReplace = @"
  listen 443 ssl;
  http2 on;
"@

$dirPath = "/usr/local/nginx/conf/conf.d"
$fileList = Get-ChildItem -Path $dirPath -Include "*.ssl.conf" -Force -File -Depth 0
$fileList | ForEach-Object {
    $(Get-Content -Path $_.FullName) -Replace($varFind,$varReplace) | Out-File -FilePath $_.FullName
}
