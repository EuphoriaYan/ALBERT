# -*- coding: utf-8 -*-
input_file=corpus/classified_corpus/zh/ci_qu_shi.txt
output_file=output/ci_qu_shi.tfrecord1
vocab_file=vocab.txt


python create_pretraining_data.py \
--input_file ${input_file} \
--output_file ${output_file} \
--vocab_file ${vocab_file} \
--do_whole_word_mask True
