
case $1 in
"")
sudo ./x86_64-softmmu/qemu-system-x86_64 \
-drive if=none,id=drive0,cache=none,format=raw,file=/mnt/nfs/Ubuntu20G-1604.img \
-device virtio-blk,drive=drive0 \
-m 3G -enable-kvm \
-net tap,ifname=tap1 -net nic,model=virtio,vlan=0,macaddr=ae:ae:30:20:10:25 \
-cpu host -smp 4 \
-vga std -chardev socket,id=mon,path=/home/ubuntu/vm1r.monitor,server,nowait -mon chardev=mon,id=monitor,mode=readline -incoming tcp:0:4441,ft_mode \
-vnc 127.0.0.1:3

;;

"gdb")
sudo gdb -ex 'set confirm off' --args x86_64-softmmu/qemu-system-x86_64 \
-drive if=none,id=drive0,cache=none,format=raw,file=/mnt/nfs/Ubuntu20G-1604.img \
-device virtio-blk,drive=drive0 \
-m 3G -enable-kvm \
-net tap,ifname=tap1 -net nic,model=virtio,vlan=0,macaddr=ae:ae:30:20:10:25 \
-cpu host -smp 4 \
-vga std -chardev socket,id=mon,path=/home/ubuntu/vm1r.monitor,server,nowait -mon chardev=mon,id=monitor,mode=readline -incoming tcp:0:4441,ft_mode \
-vnc 127.0.0.1:3

;;
*)
    echo "choose gdb or not"
;;
esac


