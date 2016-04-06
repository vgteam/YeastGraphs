id=`cd vg && git log | head -n 1 | cut -f 2 -d " " | grep -o "[A-Za-z0-9]\{8\}" | head -n 1`
cd vg && make clean-vg && make -j 4 && mv bin/vg bin/vg-$id && ln -s bin/vg-$id bin/vg
