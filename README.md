#--
# sdb.* v0.2 by B.K aka t3ch -> w4d4f4k at gmail dot com
# sdb.*          https://github.com/m5it
# sdb.* Script to sync local with remote database!
# sdb.* Useful for backups or sync because you need it!
#**************** you are welcome **********************
#             ***    my friend    ***
#             ***********************
#             · synca  effortlessly ·
#             ·······················
#--
### **Project Overview**
A bash script tool for syncing MariaDB databases. Syncs tables by auto-increment IDs, ensuring only new data is transferred.
---
### **Key Features**
- **Auto-increment sync**: Syncs data from `source` to `destination` DBs based on auto-increment IDs.
- **Configurable**: Define sync pairs and credentials in `sdb.config`.
- **Batch processing**: Uses `sdbloop.sh` to loop through defined DB pairs.
- **Debug mode**: Enable `DEBUG="true"` for detailed logs.
---
### **Files**
1. **`start.sh`**: Entry point to run the sync process.
2. **`sdb.config`**: Stores DB credentials and sync pairs (e.g., `DBS=('source1:dest1' 'source2:dest2')`).
3. **`sdbloop.sh`**: Defines DB pairs and triggers `sdb.sh` for each pair.
4. **`sdb.sh`**: Core logic for syncing tables via auto-increment ID checks.
---
### **Usage**
1. **Configure**: Edit `sdb.config` with your DB credentials and sync pairs.
2. **Run**:
``` 
./start.sh
```  
This executes `sdbloop.sh`, which runs `sdb.sh` for each defined DB pair.

### Timeline - History ###
28.01.2026 => v0.1 · Start of sdb.sh
30.01:2026 => v0.2 · Updated support of options. Added option to exclude specific tables from syncing.
**Notes**  
- Excluded tables are skipped during sync.  
- Ensure `DEBUG="true"` is set for troubleshooting.
