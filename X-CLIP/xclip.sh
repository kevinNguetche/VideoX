CUDA_VISIBLES_DEVICES=0,2 python -m torch.distributed.launch --nproc_per_node 2 main.py  -cfg configs/hmdb51/hmdb51.yaml --output /projets/Knguetche/VideoX/X-CLIP/ckp_hmdb51_xclip --accumulation-steps 2 --opts TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.ROOT /projets/Knguetche/ DATA.TRAIN_FILE datasets/train_hmdb51.txt DATA.VAL_FILE datasets/val_hmdb51.txt

CUDA_VISIBLES_DEVICES=1 python -m torch.distributed.launch --nproc_per_node 2 --master_port=29501  main.py  -cfg configs/infAR/ir_tpl_16_32.yaml --output /projets/knguetche/ --resume /path/to/ckpt/ --opts TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.ROOT /export/datasets/public/action_recognition/InfAR_Dataset_1.0/ DATA.TRAIN_FILE datasets/train_ir.txt DATA.VAL_FILE datasets/val_ir.txt

#CUDA_VISIBLES_DEVICES=2,3 python -m torch.distributed.launch --nproc_per_node 2 --master_port=29501  main.py  --cfg configs/hmdb51/video-focalnet_base.yaml --output /projets/Knguetche/Video-FocalNets/save_checkpoint_baselineTub2 --opts TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.ROOT /export/datasets/public/action_recognition/hmdb_all/ DATA.TRAIN_FILE datasets/train_hmdb51.csv DATA.VAL_FILE datasets/val_hmdb51.csv

#CUDA_VISIBLES_DEVICES=2 python -m torch.distributed.launch --nproc_per_node 1 --master_port=29501  main.py  --cfg configs/hmdb51/video-focalnet_base.yaml --output /projets/Knguetche/Video-FocalNets/save_checkpoint_lineartub1videofocalvitModel1 --opts TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.ROOT /export/datasets/public/action_recognition/hmdb_all/ DATA.TRAIN_FILE datasets/train_hmdb51.csv DATA.VAL_FILE datasets/val_hmdb51.csv

#CUDA_VISIBLES_DEVICES=1,2 python -m torch.distributed.launch --nproc_per_node 2 --master_port=29501  main.py  --cfg configs/hmdb51/video-focalnet_base.yaml --output /projets/Knguetche/Video-FocalNets/save_checkpoint_tub1videofocalvitModel1 --opts TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.ROOT /export/datasets/public/action_recognition/hmdb_all/ DATA.TRAIN_FILE datasets/train_hmdb51.csv DATA.VAL_FILE datasets/val_hmdb51.csv

#CUDA_VISIBLES_DEVICES=2 python get_flops.py
# I think the state of the art training :
# CUDA_VISIBLES_DEVICES=1 python -m torch.distributed.launch --nproc_per_node 2  --master_port=29501 main.py  --eval --cfg configs/hmdb51/video-focalnet_base.yaml --resume './video-focalnet_base_kinetics400.pth' --opts TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.ROOT /export/datasets/public/action_recognition/hmdb_all/ DATA.TRAIN_FILE datasets/test_hmdb51.csv DATA.VAL_FILE datasets/test_hmdb51.csv

#CUDA_VISIBLES_DEVICES=1 python -m torch.distributed.launch --nproc_per_node 2 --master_port=29501  main.py  --cfg configs/hmdb51/videoinceptionnext.yaml --output /projets/Knguetche/incepHmdb51Result1 --resume './inceptionnext_base_384.pth' --opts TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.ROOT /export/datasets/public/action_recognition/hmdb_all/ DATA.TRAIN_FILE datasets/test_hmdb51.csv DATA.VAL_FILE datasets/test_hmdb51.csv

#CUDA_VISIBLE_DEVICES=1 torchrun --nproc_per_node=2 --master_port=29501 --rdzv_id=my_run_id --rdzv_backend=c10d main.py --cfg configs/hmdb51/videoinceptionnext.yaml --output /projets/Knguetche/incepHmdb51Result1 --resume './inceptionnext_base_384.pth' --opts TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.ROOT /export/datasets/public/action_recognition/hmdb_all/ DATA.TRAIN_FILE datasets/train_hmdb51.csv DATA.VAL_FILE datasets/val_hmdb51.csv

# python -m torch.distributed.launch --nproc_per_node 1 main.py --cfg configs/hmdb51/video-focalnet_base.yaml --resume 'ckpt/kinetics400/video-focalnet_base_kinetics400.pth' --opts DATA.TRAIN_FILE data/hmdb51/train.csv DATA.VAL_FILE data/hmdb51/val.csv
#python -m torch.distributed.launch --nproc_per_node 1 main.py --eval --cfg configs/hmdb51/video-focalnet_base.yaml --resume 'ckpt/hmdb51/video_hmdb_51.pth' --opts  DATA.NUM_FRAMES 8 DATA.BATCH_SIZE 8 TEST.NUM_CLIP 4 TEST.NUM_CROP 3 DATA.TRAIN_FILE data/hmdb51/train.csv DATA.VAL_FILE data/hmdb51/val.csv 

