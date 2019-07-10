PYTHONPATH=.:/tmp/code_dir-ssd_code_1560274517/staging/models/rough/transformer/data_generators/:/tmp/code_dir-ssd_code_1560274517/staging/models/rough/:$PYTHONPATH python3 ssd_main.py --eval_batch_size=1024 \
--hparams=use_bfloat16=true,lr_warmup_epoch=5,base_learning_rate=3e-3,use_cocoeval_cc=true,in_memory_eval=true,distributed_group_size=16,conv0_space_to_depth=true,tpu_slice_row=16,tpu_slice_col=8,dbn_tile_row=2,dbn_tile_col=4 \
--iterations_per_loop=625 \
--mode=train_and_eval \
--model_dir=gs://mlsh_test/dev/assets/model_dir-ssd_model_dir_1560274517 \
--num_epochs=64 \
--num_shards=256 \
--resnet_checkpoint=gs://mlperf-euw4/benchmark_data/resnet34_ssd_checkpoint \
--tpu_name=TEST_TPU_1560274532.49 \
--train_batch_size=1024 \
--training_file_pattern=gs://mlperf-euw4/benchmark_data/ssd_coco/train-* \
--use_async_checkpoint=True \
--use_tpu=true \
--val_json_file=gs://mlperf-euw4/benchmark_data/ssd_coco/instances_val2017.json \
--validation_file_pattern=gs://mlperf-euw4/benchmark_data/ssd_coco/val-*