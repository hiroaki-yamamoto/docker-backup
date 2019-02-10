FROM alpine:latest
RUN apk add openssh rsync
ADD sshd_config /etc/ssh/sshd_config
RUN ssh-keygen -A
RUN mkdir /mnt/backup
RUN mkdir /root/.ssh
RUN chmod og-rwx /root/.ssh
CMD /usr/sbin/sshd -D
