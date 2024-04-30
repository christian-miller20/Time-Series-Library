export CUDA_VISIBLE_DEVICES=7

model_name=TimesNet

# 60 60 use all data from api
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_data/ \
  --data_path MSFT_all_params.csv \
  --model_id Stock_60_60_all \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len 60 \
  --label_len 30 \
  --pred_len 60 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 104 \
  --dec_in 104 \
  --c_out 1 \
  --d_model 64 \
  --d_ff 64 \
  --top_k 10 \
  --des 'Exp' \
  --itr 1 \
  --freq 'd' \
  --target 'Open'\

# 60 60 12 params
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_data/ \
  --data_path MSFT_12_params.csv \
  --model_id Stock_60_60_12 \
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
  --top_k 10 \
  --des 'Exp' \
  --itr 1 \
  --freq 'd' \
  --target 'Open'\

  # 60; 60 only use open to predict
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_data/ \
  --data_path MSFT_12_params.csv \
  --model_id Stock_60_60_minimal \
  --model $model_name \
  --data custom \
  --features S \
  --seq_len 60 \
  --label_len 30 \
  --pred_len 60 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --d_model 64 \
  --d_ff 64 \
  --top_k 5 \
  --des 'Exp' \
  --itr 1 \
  --target 'Open'\
  --freq 'd' \

# # 60 30 use all data from api
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_data/ \
  --data_path MSFT_all_params.csv \
  --model_id Stock_60_30_all \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len 60 \
  --label_len 30 \
  --pred_len 30 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 104 \
  --dec_in 104 \
  --c_out 1 \
  --d_model 64 \
  --d_ff 64 \
  --top_k 10 \
  --des 'Exp' \
  --itr 1 \
  --freq 'd' \
  --target 'Open'\

# 60; 30 only use open to predict
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_data/ \
  --data_path MSFT_12_params.csv \
  --model_id Stock_60_30_minimal \
  --model $model_name \
  --data custom \
  --features S \
  --seq_len 60 \
  --label_len 30 \
  --pred_len 30 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --d_model 64 \
  --d_ff 64 \
  --top_k 5 \
  --des 'Exp' \
  --itr 1 \
  --target 'Open'\
  --freq 'd' \

# 60; 30 use historical price info + basic financials. 12 params
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_data/ \
  --data_path MSFT_12_params.csv \
  --model_id Stock_60_30_12_params \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len 60 \
  --label_len 30 \
  --pred_len 30 \
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
  --freq 'd' \
  --target 'Open'


# 60 90 use all data from api
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock_data/ \
  --data_path MSFT_all_params.csv \
  --model_id Stock_60_90_all \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len 60 \
  --label_len 30 \
  --pred_len 90 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 104 \
  --dec_in 104 \
  --c_out 1 \
  --d_model 64 \
  --d_ff 64 \
  --top_k 10 \
  --des 'Exp' \
  --itr 1 \
  --freq 'd' \
  --target 'Open'\
