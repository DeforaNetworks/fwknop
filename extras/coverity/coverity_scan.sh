#!/bin/sh +x

make clean
./extras/apparmor/configure_args.sh
export PATH=$PATH:/home/mbr/coverity/latest/bin
cov-build --dir cov-int make
tar cvfz fwknop.tgz cov-int

echo "[+] Submit build tarball (./fwknop.tgz) here: http://scan.coverity.com/upload.html"

exit
