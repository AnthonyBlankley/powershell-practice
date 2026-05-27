<#
.SYNOPSIS
    Displays running processes.

.DESCRIPTION
    Simple script to show top CPU‑using processes.
#>

Get-Process |
    Sort-Object CPU -Descending |
    Select-Object Name, CPU -First 5
