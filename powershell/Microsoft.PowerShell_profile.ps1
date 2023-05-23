# ------------------------------------------
# Environment Variables
# ------------------------------------------

# 7zip
Set-Item Env:Path $Env:Path";C:\Program Files\7-Zip"

# Function to display each environment path line by line
function path() { $ENV:Path.Split(";") }


# ------------------------------------------
# Utility Functions
# ------------------------------------------

# Function equivalent to touch command
function touch($filename) { New-Item -type file $filename }

# Function equivalent to rm -rf command
function rmrf($dir) { Remove-Item -Recurse -Force $dir }

# Functions to move up directory levels
function cdup { Set-Location .. }
function cdup2 { Set-Location ../.. }
function cdup3 { Set-Location ../../.. }

# Set aliases for the cdup functions
Set-Alias -name .. -value cdup
Set-Alias -name ..2 -value cdup2
Set-Alias -name ..3 -value cdup3

# Functions to change the directory and then list the contents
function cdd($filePath) {
    Set-Location $filePath
    Get-ChildItem
}

# Shortcuts for frequently accessed directories
function cddot() { cdd '~/dotfiles' }
function cddoc() { cdd '~/Documents' }
function cddl() { cdd '~/Downloads' }
function cdp() { cdd '~/proj' }


# ------------------------------------------
# Git
# ------------------------------------------

Set-Alias -name g -value git

function gs() { git status }


# ------------------------------------------
# Password Generation
# ------------------------------------------

Add-type -AssemblyName System.Web

# Function to generate 10 passwords of a given length
# Each password includes at least one symbol
## Reference: https://monaski.hatenablog.com/entry/2015/09/29/202421
function Generate-Password([int]$length) {
    for ($i=0; $i -lt 10; $i++) {
        [System.Web.Security.Membership]::GeneratePassword($length, 1)
    }
}
