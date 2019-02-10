# Docker backup server to store my files on Linux

## What is this?
Simple Alpine Linux based sshd+rsync server to store my linux files

## How to use?
1. Put public keys as a file `authorized_keys` into
  `.ssh` directory in this repo.
2. `docker-compose up`
3. `ssh -p 2255 root@localhost`
