FROM alpine:latest
RUN apk add openssh rsync shadow
ADD sshd_config /etc/ssh/sshd_config
RUN ssh-keygen -A
RUN groupadd -g 1000 hyamamoto
RUN useradd -u 1000 -g 1000 hyamamoto
RUN mkdir /mnt/backup
RUN mkdir /root/.ssh
RUN chmod og-rwx /root/.ssh
CMD /usr/sbin/sshd -D
