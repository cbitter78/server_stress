# Power Testing

## Setup

To set up for this test you will need ubuntu. It is handy to use a USB stick to install it.  See [These instructions](https://ubuntu.com/tutorials/install-ubuntu-desktop#3-create-a-bootable-usb-stick) to create one.

After you have booted the host and it has a generic internet connection you will want to run

``shell
apt-get update
apt-get install git stress-ng sysstat fio
```



```shell

stress-ng --cpu 0 --cpu-load 99 --cpu-method loop --timeout 30 --metrics -vm-bytes 1G 


fio 
--filename=/dev/nvme2n1 \
--filename=/dev/nvme2n1 \
--filename=/dev/nvme2n1 \
--filename=/dev/nvme2n1 \
--filename=/dev/nvme2n1 \
--filename=/dev/nvme2n1 \
--filename=/dev/nvme2n1 \
--direct=1 \
--rw=randread \
--bs=4k \
--ioengine=libaio \
--iodepth=256 \
--runtime=60 \
--numjobs=4 \
--eta-newline=1 &


```