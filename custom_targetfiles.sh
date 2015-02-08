#/bin/bash
echo "in $0"
OUT_DIR=/home/jay/baidurom/4.1/devices/i9100/out/merged_target_files

cd $OUT_DIR
rm -rf DATA/
mkdir -p DATA/
mv -f $OUT_DIR/SYSTEM/app/ $OUT_DIR/DATA
