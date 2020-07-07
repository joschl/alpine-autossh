FROM alpine:latest

RUN apk add --update autossh

ENV \
	AUTOSSH_LOGFILE=/dev/stdout \
	AUTOSSH_GATETIME=30         \
	AUTOSSH_POLL=10             \
	AUTOSSH_FIRST_POLL=30       \
	AUTOSSH_PORT=13000           
	# AUTOSSH_DEBUG=1             \
	# AUTOSSH_LOGLEVEL=1          \

ADD docker-entrypoint.sh /usr/local/bin
	

ENTRYPOINT [ "docker-entrypoint.sh" ]
