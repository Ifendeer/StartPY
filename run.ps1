$Folder = 'py_env'
$DefaultFilename = 'start.py'

if($args[0].Count -eq 0){
    $Filename = $DefaultFilename
}

if (Test-Path -Path $Folder) {
    & "$Folder\scripts\activate";
    & "$Folder/scripts/python.exe" -u "`"$PSScriptRoot\$Filename`""
} else {
    #python -u $Filename
    py -3 -m venv $Folder
    & "$Folder\scripts\activate"
    & "$Folder/scripts/python.exe" -u "`"$PSScriptRoot\$Filename`""
}
