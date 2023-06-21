#! /bin/sh

DEFAULT_CPU_LOAD_PERCENT=30
CPU_LOAD="${1:-$DEFAULT_CPU_LOAD_PERCENT}"

DEFAULT_TIMEOUT_SECONDS=300
TIMEOUT="${2:-$DEFAULT_TIMEOUT}"

echo "******************************"
echo "***** Load testing at $CPU_LOAD% for $TIMEOUT seconds"
echo "******************************"
echo ""

stress-ng --cpu 0 --cpu-load $CPU_LOAD --cpu-method loop --timeout $TIMEOUT --metrics --vm-bytes 1G &
stress-ng --vm 8 --vm-bytes $CPU_LOAD --vm-method all --verify -t $TIMEOUT -v

fio 4k_8disk.fio --timeout=$TIMEOUT &