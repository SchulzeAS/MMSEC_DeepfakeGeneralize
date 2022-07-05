#!/bin/bash
mkdir DFMN
./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/blink/ dfmnist_blink
mkdir DFMN/blink
mv seferbekov.csv DFMN/blink
mv deepware.csv DFMN/blink
./processdolder blink

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/embarrass/ dfmnist_embarrass
mkdir DFMN/embarrass
mv seferbekov.csv DFMN/embarrass
mv deepware.csv DFMN/embarrass
./processdolder embarrass

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/left_slope/ dfmnist_left_slope
mkdir DFMN/left_slope
mv seferbekov.csv DFMN/left_slope
mv deepware.csv DFMN/left_slope
./processdolder left_slope

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/mouth/ dfmnist_mouth
mkdir DFMN/mouth
mv seferbekov.csv DFMN/mouth
mv deepware.csv DFMN/mouth
./processdolder mouth

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/nod/ dfmnist_nod
mkdir DFMN/nod
mv seferbekov.csv DFMN/nod
mv deepware.csv DFMN/nod
./processdolder nod

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/right_slope/ dfmnist_right_slope
mkdir DFMN/right_slope
mv seferbekov.csv DFMN/right_slope
mv deepware.csv DFMN/right_slope
./processdolder right_slope

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/smile/ dfmnist_smile
mkdir DFMN/smile
mv seferbekov.csv DFMN/smile
mv deepware.csv DFMN/smile
./processdolder smile

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/surprise/ dfmnist_surpise
mkdir DFMN/surpise
mv seferbekov.csv DFMN/surpise
mv deepware.csv DFMN/surpise
./processdolder surprise

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/up/ dfmnist_up
mkdir DFMN/up
mv seferbekov.csv DFMN/up
mv deepware.csv DFMN/up
./processdolder up

./run_both_on_dataset.sh datasets/DFMNIST+/fake_dataset/yaw/ dfmnist_yaw
mkdir DFMN/yaw
mv seferbekov.csv DFMN/yaw
mv deepware.csv DFMN/yaw
./processdolder yaw
