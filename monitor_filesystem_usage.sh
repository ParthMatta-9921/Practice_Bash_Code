#!/bin/bash


 if [ "$#" -ne 1 ];then
{
    echo "Invalid arguments. Only one argument needed."
    exit 1
}
fi
arg=$1
#echo $arg

SOURCES=($(df --output=source | tail -n +2)) # these are all arrays
P_USED=($(df --output=pcent | tail -n +2))
AVAILABLE=($(df --output=avail | tail -n +2))

for i in "${!SOURCES[@]}";do
{
    if [ "${SOURCES[i]}" == "$arg" ];then
    {
        echo "Filesystem $arg is ${P_USED[i]} used with ${AVAILABLE[i]} KB free."
        exit 0
    }
    fi
}
done
echo "Error: Filesystem $arg is not mounted."
exit 1