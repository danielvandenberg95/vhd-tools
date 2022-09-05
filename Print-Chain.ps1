$file = "my file.avhdx"

function Get-ParentVHD($VHDPath) {
    # Print the path
    Write-Host $VHDPath
    # Use get-hvd to get the parent of the file
    $VHD = Get-VHD -Path $VHDPath
    $ParentPath = $VHD.ParentPath
    if ($ParentPath) {
        Get-ParentVHD -VHDPath $ParentPath
    }
}
# Run function
Get-ParentVHD -VHDPath $file
