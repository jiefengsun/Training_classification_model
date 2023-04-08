#! /bin/bash
python3 train.py --model-dir=models/terrains_inddor --workers=10 --epochs=10 -b=32 data/terrains_indoor
python3 onnx_export.py --model-dir=models/terrains_inddor
python3 onnx_validate.py models/terrains_inddor/resnet18.onnx
