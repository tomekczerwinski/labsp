#!/bin/sh

# var1 contains size of file1
var1=$(stat -c%s file1)
# var2 contains size of file2
#same as above
if [[ "$var1" -lt "$var2" ]]; then
    echo '..........'
elif [[ "$var1" -gt "$var2" ]]; then
    echo '..........'
elif [[ "$var1" -eq "$var2" ]]; then
    echo '..........'
fi
