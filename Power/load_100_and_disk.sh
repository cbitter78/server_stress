#! /bin/sh

stress-ng --cpu 0 --cpu-load 99 --cpu-method loop \
 --timeout 30 --metrics -vm-bytes 1G&


fio 
--filename=/dev/nvme2n1 \
--filename=/dev/nvme3n1 \
--filename=/dev/nvme4n1 \
--filename=/dev/nvme5n1 \
--filename=/dev/nvme6n1 \
--filename=/dev/nvme7n1 \
--filename=/dev/nvme8n1 \
--direct=1 \
--rw=randread \
--bs=4k \
--ioengine=libaio \
--iodepth=256 \
--runtime=60 \
--numjobs=4 \
--eta-newline=1 &

fio 
--filename=/dev/nvme2n1 \
--filename=/dev/nvme3n1 \
--filename=/dev/nvme4n1 \
--filename=/dev/nvme5n1 \
--filename=/dev/nvme6n1 \
--filename=/dev/nvme7n1 \
--filename=/dev/nvme8n1 \
--direct=1 \
--rw=randread \
--bs=4k \
--ioengine=libaio \
--iodepth=256 \
--runtime=60 \
--numjobs=4 \
--eta-newline=1 &

fio 
--filename=/dev/nvme2n1 \
--filename=/dev/nvme3n1 \
--filename=/dev/nvme4n1 \
--filename=/dev/nvme5n1 \
--filename=/dev/nvme6n1 \
--filename=/dev/nvme7n1 \
--filename=/dev/nvme8n1 \
--direct=1 \
--rw=randread \
--bs=4k \
--ioengine=libaio \
--iodepth=256 \
--runtime=60 \
--numjobs=4 \
--eta-newline=1 &

fio 
--filename=/dev/nvme2n1 \
--filename=/dev/nvme3n1 \
--filename=/dev/nvme4n1 \
--filename=/dev/nvme5n1 \
--filename=/dev/nvme6n1 \
--filename=/dev/nvme7n1 \
--filename=/dev/nvme8n1 \
--direct=1 \
--rw=randread \
--bs=4k \
--ioengine=libaio \
--iodepth=256 \
--runtime=60 \
--numjobs=4 \
--eta-newline=1 &