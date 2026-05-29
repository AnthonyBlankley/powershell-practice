<#
.SYNOPSIS
    Shows the top CPU-using processes.

.DESCRIPTION
    Gets the top five processes by CPU and prints them in a simple report.
#>

# The pipe "|" sends the output to the next command
$processes = Get-Process |                     # get all processes
    Sort-Object CPU -Descending |              # sort by CPU (highest first)
    Select-Object Name, CPU -First 5           # take the top 5

# Print a header
Write-Host "Top CPU Processes"
Write-Host "-----------------"

# foreach = do this for each process in the list
foreach ($p in $processes) {
    Write-Host $p.Name " - CPU: " $p.CPU       # print one line per process
}
