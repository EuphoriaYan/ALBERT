# -*- coding: utf-8 -*-
input_file=corpus/classified_corpus/daizhige/集藏_combine_ft.txt
output_file=output/jizang_data.tfrecord1,output/jizang_data.tfrecord2,output/jizang_data.tfrecord3
vocab_file=vocab2.txt


python create_pretraining_data.py \
--input_file ${input_file} \
--output_file ${output_file} \
--vocab_file ${vocab_file} \
--do_whole_word_mask True
