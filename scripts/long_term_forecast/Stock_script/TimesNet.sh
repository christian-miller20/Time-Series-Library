export CUDA_VISIBLE_DEVICES=7

model_name=TimesNet

# changed:
# root_path
# data_path
# model_id
# seq_len
# label_len
# pred_len
# enc_in --> n_input parameters/columns
# dec_in
# c_out --> only want to predict 1 thing: price

# added:
# inverse

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_data/ \
  --data_path MSFT.csv \
  --model_id Stock_60_60 \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len 60 \
  --label_len 30 \
  --pred_len 60 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 12 \
  --dec_in 12 \
  --c_out 1 \
  --d_model 64 \
  --d_ff 64 \
  --top_k 5 \
  --des 'Exp' \
  --itr 1 \
  --inverse True 
  