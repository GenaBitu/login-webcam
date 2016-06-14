#!/bin/sh

search="auth\t\[success\=1 default\=ignore\]\tpam_unix.so nullok_secure"
replace="auth\t\[success\=2 default\=ignore\]\tpam_unix.so nullok_secure\n# Previous line was modified and next line added by login-webcam\nauth\t\[default\=ignore\]\t\tpam_exec.so seteuid \/usr\/local\/bin\/login-webcam.sh"

mkdir -p /var/log/login-webcam
sed -i".login-webcam.orig" -e "s/$search/$replace/" /etc/pam.d/common-auth
