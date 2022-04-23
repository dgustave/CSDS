#!/bin/bash
base_dir=/c/Users/$(whoami)
for rc in *.bashrc
do
	cp -v "$rc" $(base_dir)/".bashrc"
done
tar zxvf dependencies.tar.gz
cd dependencies
pip install * -f ./ --no-index --no-deps
cp -r cookiecutter-data-science $(base_dir)/cookiecutter-data-science
