#!/bin/bash
set -e
for i in *.ipynb;do
    echo "Running $i"
    j=$(basename -s .ipynb $i)
    k=$j.py
    ipython3 nbconvert --to python $i &> $i.log
    set +e
    python3 $k &> $k.log
    set -e
done

