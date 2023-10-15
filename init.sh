#!/bin/bash

LOCATION=$(python -c "import speech_recognition as sr, os.path as p; print(p.dirname(sr.__file__))"
)

echo $LOCATION
cd $LOCATION
cd pocketsphinx-data
mkdir zh-CN
cd zh-CN
cp /app/code/lang/cmusphinx-zh-cn-5.2.tar.gz .
tar -xf cmusphinx-zh-cn-5.2.tar.gz
cp -R cmusphinx-zh-cn-5.2/* .
mv zh_cn.cd_cont_5000 acoustic-model
mv zh_cn.lm.bin language-model.lm.bin
mv zh_cn.dic pronounciation-dictionary.dict
ls
pwd
cd /app/code
python3 hello.py

