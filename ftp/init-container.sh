#!/bin/bash

docker run -d -v ftpzipz:/home/vsftpd \
                -p 20:20 -p 21:21 -p 47400-47470:47400-47470 \
                -e FTP_USER=local \
                -e FTP_PASS=local \
                -e PASV_ADDRESS=localhost \
                --name ftp \
                --restart=always bogem/ftp
