#Run the command /outputfile inventory when logged in to Everquest.
#Then run this powershell file, browse to the output file, select the item of interest, and press OK to learn more about the item.


Add-Type -AssemblyName System.Windows.Forms
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{
    Multiselect = $false # Multiple files can be chosen
	Filter = 'Text (*.txt)|*.txt' # Specified file types
}
 
[void]$FileBrowser.ShowDialog()

$file = $FileBrowser.FileName;

If($FileBrowser.FileNames -like "*\*") {

	while ($true)
			{
			$url = import-csv -Path $FileBrowser.FileName -Delimiter "`t" | Where-Object { $_.PSObject.Properties.Value -ne $null} | Where-Object Name -ne Empty | ForEach-Object {$_.ID = "https://items.eqresource.com/items.php?id=$($_.ID)"; $_} | out-gridview -PassThru -Title "Inventory Lookup"  
			Start-Process -FilePath $url.ID
			}
	
	
}

else {
    Write-Host "Cancelled by user"
}




	
		
	

