#! /bin/sh

TIMEOUT=30

stress-ng --cpu 0 --cpu-load 99 --cpu-method loop --timeout $TIMEOUT --metrics --vm-bytes 1G &
fio 4k_8disk.fio --timeout=$TIMEOUT &