unset DEBIAN_FRONTEND

export LOG=/var/log/jitsi/jvb.log

if [ ! -f "$LOG" ]; then
echo "Please Run Install.sh"
	touch $LOG && \
	chown jvb:jitsi $LOG
fi

cd /etc/init.d/


tail -f $LOG
