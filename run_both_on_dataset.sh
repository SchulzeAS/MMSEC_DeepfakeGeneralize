#!/bin/bash
# usage: ./run_both_on_dataset.sh <path_to_dataset> <datasetname>
#run seferbekov
if [ -z $1 ] || [ -z $2 ]
then
	echo "usage:./run_both_on_dataset.sh <path_to_dataset> <datasetname>"
	exit 0
fi
echo $2 >> date.txt
echo "time before sefebekov" >> date.txt
date >>date.txt
cd dfdc_deepfake_challenge/
./predict_submission.sh ../$1 "seferbekov.csv"
cp seferbekov.csv ../ 
echo "time seferbekov" >> date.txt
date >>date.txt
echo "time before deepware" >>date.txt
date >>date.txt

cd ../deepfake-scanner
python3 scan.py ../$1 weights config.json cuda:0
cp result.csv ../deepware.csv
cd ..
echo "time deepware" >>date.txt
date >>date.txt

#python3 preprocess.py
#python3 merge_csv.py
#rm seferbekov.csv
#rm deepware.csv
#rm clean_results.csv
#mv combined_results.csv $2.csv
