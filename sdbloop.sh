#!/bin/bash
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
# Used files:
# - sdb.config  ( configurations for remote and local db )
# - sdb.sh      ( main script that do the job )
# - sdbloop.sh  ( Define db names )
#--
source sdb.config
#
for DB in "${DBS[@]}"; do
	echo "sdbloop.sh => Parsing DB: "$DB
    IFS=';:' read -ra parts <<< "$DB"
    CMD="" # Supported commands: -E (exclude tables)
	EXC=""
	SDB=""
	DDB=""
    if [[ ${parts[0]} == -* ]]; then
        # First part is a flag (e.g., "-E")
        #SDB=${TMP#*:}
		#DDB=${TMP%%:*}
        CMD=${parts[0]} # for future versions
	    EXC=${parts[1]}
	    SDB="${parts[2]}"
	    DDB="${parts[3]}"
	    #
	    ./sdb.sh "$SDB" "$DDB" "$EXC"
    else
        # Default case: split on first colon
        SDB=${parts[0]}
        DDB=${parts[1]}
        ./sdb.sh "$SDB" "$DDB"
    fi
    echo "CMD: $CMD" # -E ...
    echo "EXC: $EXC" # -E:somedata;
	echo "SDB: $SDB"
	echo "DDB: $DDB"
done
echo "Done!"
