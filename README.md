# EQInventoryChecker

A super simple PowerShell script to quickly look up item info from your EverQuest inventory using [eqresource.com](https://eqresource.com).

This is useful for checking vendor values or item details, especially since EQ lacks modern inventory plugins like WoW and other MMOs.

🎥 See `ExampleVideo.mkv` for a preview.

---

## Setup Instructions

1. **In-Game (EverQuest):**
   - Log in and run the command:
     ```
     /outfile inventory
     ```
   - Note the file path EverQuest provides after running the command.

2. **Run the Script:**
   - Launch `EverquestInventoryChecker.ps1`.
   - Use the file picker to open your `inventory.txt` file from step 1.

3. **Search and Lookup:**
   - A GUI GridView will appear.
   - Select an item and click **OK**.
   - The corresponding item page will open in your default browser via eqresource.com.

> 🔁 The GridView runs in a loop for fast multi-item lookups.  
> ❌ To exit, just close the PowerShell window.

---

Enjoy faster inventory management!
