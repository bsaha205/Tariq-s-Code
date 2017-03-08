input="masters"
while IFS= read -r var
do
  ./INIT.sh "$var" &
done < "$input"
./mastertask.sh
sleep 30
g++ merger.cpp
./a.out CombinedData
g++ regression.cpp -o regression.out
./regression.out CombinedData
