# Get the list of all text files in the current folder
$textFiles = Get-ChildItem -Filter *.txt

# Sort the text files alphabetically
$textFiles = $textFiles | Sort-Object Name

# Initialize an empty string to store the merged contents
$mergedContents = ""

# Iterate over each text file
foreach ($file in $textFiles) {
    # Read the contents of the file
    $fileContents = Get-Content $file.FullName -Raw

    # Append the contents to the merged string with a new line
    $mergedContents += $fileContents + "`n"
}

# Write the merged contents to the output file
$mergedContents | Out-File -FilePath "merged.txt" -Encoding UTF8

Write-Host "Text files merged successfully!"
