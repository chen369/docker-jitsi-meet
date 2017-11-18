unset DEBIAN_FRONTEND

export LOG=/var/log/jitsi/jvb.log

if [ ! -f "$LOG" ]; then
apt-get -y install jitsi-meet

	touch $LOG && \
	chown jvb:jitsi $LOG
fi

cd /etc/init.d/

./prosody restart && \
./jitsi-videobridge restart && \
./jicofo restart && \
./nginx restart

tail -f $LOG
