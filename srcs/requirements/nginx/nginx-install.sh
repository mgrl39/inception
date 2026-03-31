#!/bin/bash
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    nginx-install.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelona.co  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/03/28 20:33:36 by meghribe          #+#    #+#              #
#    Updated: 2026/03/28 20:33:36 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Note: this script does not verify that the downloaded file container the proper key
# tooo much for me
# font: https://nginx.org/en/linux_packages.html#Alpine

echo ' installing the prerequisites'
apk add openssl curl ca-certificates

echo ' setting up the apk repository for stable nginx packages '
printf "%s%s%s%s\n" \
    "@nginx " \
    "https://nginx.org/packages/alpine/v" \
    `egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release` \
    "/main" \
    | tee -a /etc/apk/repositories

echo ' fetching the original signing key '
curl -o /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub

echo ' moving key to apk trusted keys storage '
mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/

echo ' installing nginx '
apk add nginx@nginx

#exec "/usr/sbin/nginx -g daemon off"
