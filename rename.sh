#initiator=$(head -n 1 initiator.txt)
myname=$(head -n 1 name.txt)
cd RegressionOutput/
#echo $initiator
for file in *
do
        x=${file##*/}
        echo $x
        if [[ -d $x ]]; then
        cd "$x"/
        for y in *
        do
                if [[ "${y##*/}" = "part-r-00000" ]]; then
                        echo "found"
                        mv "${y##*/}" "$myname""$x"
                        cp "$myname""$x" "/home/ubuntu/CombinedData/""$x"
                fi;
        done
        cd ..
        fi
done
