#!/bin/bash -e
for i in *.ipynb;do
    echo "Running $i"
    j=$(basename -s .ipynb $i)
    k=$j.py
    ipython3 nbconvert --to python $i &> $i.log
    python3 $k &> $k.log
done

