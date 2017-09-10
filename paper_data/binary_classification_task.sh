#!/usr/bin/env bash
#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/bin_cls/512 --traincsv ../data/bin_cls/train_bin.csv --valcsv ../data/bin_cls/val_bin.csv --testcsv ../data/bin_cls/test_bin.csv --workers 4 --batch 32



#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/kaggle_512/512 --traincsv ../data/kaggle_512/train_bin.csv --valcsv ../data/kaggle_512/val_bin.csv --testcsv ../data/kaggle_512/test_bin.csv --workers 4 --batch 32 --epoch 30
#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/kaggle_512/512 --traincsv ../data/kaggle_512/train_bin.csv --valcsv ../data/kaggle_512/val_bin.csv --testcsv ../data/kaggle_512/test_bin.csv --workers 4 --batch 100 --epoch 30 --model rsn18
#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/kaggle_512/512 --traincsv ../data/kaggle_512/train_bin.csv --valcsv ../data/kaggle_512/val_bin.csv --testcsv ../data/kaggle_512/test_bin.csv --workers 4 --batch 32 --epoch 30 --model rsn34
#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/kaggle_512/512 --traincsv ../data/kaggle_512/train_bin.csv --valcsv ../data/kaggle_512/val_bin.csv --testcsv ../data/kaggle_512/test_bin.csv --workers 4 --batch 16 --epoch 30 --model rsn50
#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/kaggle_512/512 --traincsv ../data/kaggle_512/train_bin.csv --valcsv ../data/kaggle_512/val_bin.csv --testcsv ../data/kaggle_512/test_bin.csv --workers 4 --batch 8 --epoch 30 --model rsn101
#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/kaggle_512/512 --traincsv ../data/kaggle_512/train_bin.csv --valcsv ../data/kaggle_512/val_bin.csv --testcsv ../data/kaggle_512/test_bin.csv --workers 4 --batch 8 --epoch 30 --model dsn121

#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/kaggle_512/512 --traincsv ../data/kaggle_512/train_bin.csv --valcsv ../data/kaggle_512/val_bin.csv --testcsv ../data/kaggle_512/test_bin.csv --workers 4 --batch 32 --epoch 30





### small dataset

#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/tmp/512 --traincsv ../data/tmp/train_bin.csv --valcsv ../data/tmp/val_bin.csv --testcsv ../data/tmp/test_bin.csv --workers 4 --batch 8 --epoch 30 --model dsn121
#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/tmp/512 --traincsv ../data/tmp/train_bin.csv --valcsv ../data/tmp/val_bin.csv --testcsv ../data/tmp/test_bin.csv --workers 4 --batch 64 --epoch 30 --model rsn18

#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/tmp/512 --traincsv ../data/tmp/train_bin.csv --valcsv ../data/tmp/val_bin.csv --testcsv ../data/tmp/test_bin.csv --workers 4 --batch 64 --epoch 30 --model rsn18 --phase test --weight /home/weidong/code/dr/DiabeticRetinopathy_solution/paper_data/output/kaggle_binary_cls_train_20170908084549_rsn18_binary_cls/kaggle_binarycls_rsn18_000_best.pth

#CUDA_VISIBLE_DEVICES=0,1 python binary_classification.py --root ../data/zhizhen_new/LabelImages/512 --traincsv ../data/zhizhen_new/LabelImages/val_multi.csv --valcsv ../data/zhizhen_new/LabelImages/val_multi.csv --testcsv ../data/zhizhen_new/LabelImages/test_bin.csv --workers 4 --batch 64 --epoch 30 --model rsn18




### GPU server

CUDA_VISIBLE_DEVICES=0,1,2,3 python binary_classification.py --root ../data/zhizhen_new/LabelImages/512 --traincsv ../data/zhizhen_new/LabelImages/val_multi.csv --valcsv ../data/zhizhen_new/LabelImages/val_multi.csv --testcsv ../data/zhizhen_new/LabelImages/test_bin.csv --workers 4 --batch 64 --epoch 30 --model rsn34
CUDA_VISIBLE_DEVICES=0,1,2,3 python binary_classification.py --root ../data/zhizhen_new/LabelImages/512 --traincsv ../data/zhizhen_new/LabelImages/val_multi.csv --valcsv ../data/zhizhen_new/LabelImages/val_multi.csv --testcsv ../data/zhizhen_new/LabelImages/test_bin.csv --workers 4 --batch 64 --epoch 30
CUDA_VISIBLE_DEVICES=0,1,2,3 python binary_classification.py --root ../data/zhizhen_new/LabelImages/512 --traincsv ../data/zhizhen_new/LabelImages/val_multi.csv --valcsv ../data/zhizhen_new/LabelImages/val_multi.csv --testcsv ../data/zhizhen_new/LabelImages/test_bin.csv --workers 4 --batch 16 --epoch 30 --model dsn121