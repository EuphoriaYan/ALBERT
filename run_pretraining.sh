# -*- coding: utf-8 -*-
albert_config_file=configs/albert_config.json
input_file=output/bieji.tfrecord1,output/bieji.tfrecord2,output/bieji.tfrecord3,\
output/ci_qu_shi.tfrecord1,\
output/core.tfrecord1,\
output/jizang_data.tfrecord1,output/jizang_data.tfrecord2,output/jizang_data.tfrecord3,\
output/leishu.tfrecord1,\
output/ruzang_data.tfrecord1,\
output/shi1zang_data.tfrecord1,output/shi1zang_data.tfrecord2,\
output/shi3zang_data.tfrecord1,\output/shi3zang_data.tfrecord2,output/shi3zang_data.tfrecord3,\
output/zizang_data.tfrecord1,\
output/zongji.tfrecord1,output/zongji.tfrecord2,output/zongji.tfrecord3
output_dir=model_output
ckpt_path=./albert_base/model.ckpt-best

python run_pretraining.py \
--albert_config_file ${albert_config_file} \
--input_file ${input_file} \
--output_dir ${output_dir} \
--do_train True \
--do_eval True \
--init_checkpoint ${ckpt_path} \
--num_train_steps 1000000 \
--num_warmup_steps 20000 \
--optimizer adamw \
--learning_rate 5e-5

