DISK_IMG="disk.img"
RUN_CMD="qemu-system-x86_64 --enable-kvm -vga std -monitor stdio -vnc :1,password"
BOOT_OPT="-usb -device usb-tablet -smp 2 -m 4096"
CD_OPT="-cdrom /path/to/windows.iso"

if [ ! $1 ]
then
    echo "./qemu.sh [ install | boot ]"
else

    if [ $1 = "install" ]
    then

        if [ -f $DISK_IMG ]
        then
            echo "the disk file is already exists"
            exit
        fi

        qemu-img create -f qcow2 $DISK_IMG 40G

        echo "remenber to exec 'set_password vnc <password>' after logging into the command"
        echo ""
        $RUN_CMD $BOOT_OPT $CD_OPT -boot order=d $DISK_IMG

        exit
    fi

    if [ $1 = "boot" ]
    then

        echo "remenber to exec 'set_password vnc <password>' after logging into the command"
        echo ""
        $RUN_CMD $BOOT_OPT $DISK_IMG

        exit
    fi

fi

