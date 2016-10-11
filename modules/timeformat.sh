dialog --backtitle "Time format" \
  --radiolist "Select time format: " 15 40 15\
        1 MM-dd-yyyy  on\
        2 dd.MM.yyyy off \
        3 MM/dd/yyyy off \
        4 dd/MM/yyyy off 2>$_temp

menuitem=`cat $_temp`
rm $_temp

case "$menuitem" in
        1)
                sed -i 's/ro.com.android.dateformat.*/ro.com.android.dateformat=MM-dd-yyyy/' $WORKDIR/mount_path/build.prop
                ;;
        2)
                sed -i 's/ro.com.android.dateformat.*/ro.com.android.dateformat=dd.MM.yyyy/' $WORKDIR/mount_path/build.prop
                ;;
        3)
                sed -i 's/ro.com.android.dateformat.*/ro.com.android.dateformat=MM\/dd\/yyyy/' $WORKDIR/mount_path/build.prop
                ;;
        4)
                sed -i 's/ro.com.android.dateformat.*/ro.com.android.dateformat=dd\/MM\/yyyy/' $WORKDIR/mount_path/build.prop
                ;;
        255) functClean & exit 1;;
        *)    functClean & exit 1
esac
