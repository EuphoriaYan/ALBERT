# -*- coding: utf-8 -*-
input_file=corpus/classified_corpus/zh/bieji.txt
output_file=output/bieji.tfrecord1,output/bieji.tfrecord2,output/bieji.tfrecord3
vocab_file=vocab2.txt


python create_pretraining_data.py \
--input_file ${input_file} \
--output_file ${output_file} \
--vocab_file ${vocab_file} \
--do_whole_word_mask True
