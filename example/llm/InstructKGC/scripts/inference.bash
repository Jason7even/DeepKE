
CUDA_VISIBLE_DEVICES="3" python inference.py \
    --base_model 'zjunlp/CaMA-13B-Diff' \
    --lora_weights 'lora/CaMA-13B-LORA' \
    --input_file 'data/valid.json' \
    --output_file 'result/CaMA-13B-LORA/test_preds.json' \
    --load_8bit \