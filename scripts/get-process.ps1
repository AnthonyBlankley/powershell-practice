<#
.SYNOPSIS
    Displays all running processes.

.DESCRIPTION
    Simple, non-admin script for checking high-CPU processes.
#>

Get-Process |
    Sort-Object CPU -Descending |
    Select-Object Name, CPU, Id
