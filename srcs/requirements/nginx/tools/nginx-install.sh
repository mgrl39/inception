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
# tooo much for me :P
# font: https://nginx.org/en/linux_packages.html#Debian

apt update
apt install curl gnupg2 ca-certificates lsb-release debian-archive-keyring nginx -y
