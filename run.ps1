$Folder = 'py_env'
$DefaultFilename = 'start.py'

if($args[0].Count -eq 0){
    $Filename = $DefaultFilename
}

if (Test-Path -Path $Folder) {
    & "$Folder\scripts\activate";
    & "$Folder/scripts/python.exe" -u "`"$PSScriptRoot\$Filename`""
} else {
    py -3 -m venv $Folder
    & "$Folder\scripts\activate"
    & "$Folder/scripts/python.exe" -m pip install --upgrade pip
    & "$Folder/scripts/python.exe" -u "`"$PSScriptRoot\$Filename`""
}
