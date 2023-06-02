output_dir='lora/CaMA-13B-myself'
CUDA_VISIBLE_DEVICES="0,1" torchrun --nproc_per_node=3 --master_port=1331 finetune.py \
    --base_model 'zjunlp/CaMA-13B-Diff' \
    --train_path 'data/train.json' \
    --output_dir=${output_dir}  \
    --batch_size 960 \
    --micro_train_batch_size 10 \
    --num_epochs 3 \
    --learning_rate 1e-4 \
    --cutoff_len 512 \
    --val_set_size 1000 \
    --lora_r 8 \
    --lora_alpha 16 \
    --lora_dropout 0.05 \
    --lora_target_modules '[q_proj,v_proj]' \
    --train_on_inputs \
    --group_by_length \