### **Function: `indexOf`**
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
#### **Description**
#Finds the index of the first occurrence of a specified value in an array. If the value is not found, returns `-1`. This function is **case-sensitive** by default.
#---
### **Parameters**
#1. **`value`**
#- The value to search for in the array.
#- **Type**: String.
#2. **`array[@]`**
#- The array to search through.
#- **Type**: Array of strings.
#---
### **Return Value**
#- **Index**: The index of the first occurrence of `value` in the array (starting from `0`).
#- **`-1`**: If the value is not found in the array.
#---
### **Example Usage** 
#arr=("apple" "banana" "cherry")
#index=$(indexOf "banana" "${arr[@]}")
#echo "Index of 'banana': $index"  # Output: Index of 'banana': 1

indexOf() {
    local value="$1"
    shift
    local index=0

    for element in "$@"; do
        if [[ "$element" == "$value" ]]; then
            echo "$index"
            return
        fi
        ((index++))
    done

    echo "-1"
}
