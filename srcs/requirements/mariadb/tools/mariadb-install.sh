#!/bin/bash
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    mariadb-install.sh                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/04/01 18:46:42 by meghribe          #+#    #+#              #
#    Updated: 2026/04/01 18:46:42 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# https://linuxcapable.com/how-to-install-mariadb-debian-linux/
apt update
apt install mariadb-server mariadb-client -y
