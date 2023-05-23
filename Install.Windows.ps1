# Check if the profile exists
if (Test-Path $PROFILE) {
    # Create the backup directory if it does not exist
    $backupDir = "~\dotbackup"
    if (-not (Test-Path $backupDir)) {
        New-Item -ItemType Directory -Force -Path $backupDir
    }

    # Move the current profile to the backup directory
    $timestamp = Get-Date -Format "yyyyMMddHHmmss"
    $backupPath = Join-Path $backupDir "$timestamp-Microsoft.PowerShell_profile.ps1"
    Move-Item -Path $PROFILE -Destination $backupPath
}

# Create a symbolic link
$dotfilesProfile = Resolve-Path "~\dotfiles\powershell\Microsoft.PowerShell_profile.ps1"
New-Item -ItemType SymbolicLink -Path $PROFILE -Value $dotfilesProfile
