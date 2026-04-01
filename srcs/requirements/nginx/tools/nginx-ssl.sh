#!/bin/bash
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    nginx-ssl.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/03/31 18:26:47 by meghribe          #+#    #+#              #
#    Updated: 2026/03/31 18:26:47 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# in the Dockerfile we copy all scripts and conf to the same folder. 
# thats why FOLDER is .
# in the git project is not ., scripts in tools/ and cnf in conf/
INFOLDER=.
OUTFOLDER=certs
HOST=openssl-meghribe.42.fr

mkdir certs

openssl req -x509 -nodes -days 365 \
 -newkey rsa:2048 \
 -keyout $OUTFOLDER/$HOST.crt.key \
 -out $OUTFOLDER/$HOST.crt \
 -config $INFOLDER/$HOST.cnf \
 -extensions ext

cp $OUTFOLDER/$HOST.crt /etc/ssl/$HOST.crt
cp $OUTFOLDER/$HOST.crt.key /etc/ssl/$HOST.crt.key
cp nginx-meghribe.42.fr.conf /etc/nginx/conf.d
# Nginx needs read access
chmod 664 /etc/ssl/$HOST.crt
chmod 600 /etc/ssl/$HOST.crt.key
