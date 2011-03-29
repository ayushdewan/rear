# Use vgcfgbackup to copy the current LVM setup exactly

if ! type lvm &>/dev/null ; then
    return 0
fi

mkdir -p $VAR_DIR/layout/lvm
lvm vgcfgbackup -f $VAR_DIR/layout/lvm/%s.cfg > /dev/null