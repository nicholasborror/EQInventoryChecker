# EQInventoryChecker

This extremly simple Powershell script takes the output of your Everquest Inventorty and allows you to quickly and easily lookup any items that are in your inventory using eqresource.com.

See ExampleVideo.mkv for a preview.

Setup:

After logging into your character in Everquest, execute the command 

/outfile inventory 

and note the file path the game gives you.

Run the EverquestInventoryChecker.ps1 script and open the inventory file given in the previous step.

Use the "GUI" to search and select the item you want to investigate, and then click OK.  The cooresponding website of eqresource.com will open in your default browser.

The gridview is locked in a infinite loop to allow you to quickly look up multiple items.  If you want to close the gridview, click the Powershell window.



