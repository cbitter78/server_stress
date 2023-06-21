#! /bin/sh

DEFAULT_CPU_LOAD_PERCENT=30
CPU_LOAD="${1:-$DEFAULT_CPU_LOAD_PERCENT}"

DEFAULT_TIMEOUT_SECONDS=300
TIMEOUT="${2:-$DEFAULT_TIMEOUT}"

stress-ng --cpu 0 --cpu-load $CPU_LOAD --cpu-method loop --timeout $TIMEOUT --metrics --vm-bytes 1G &
fio 4k_8disk.fio --timeout=$TIMEOUT &