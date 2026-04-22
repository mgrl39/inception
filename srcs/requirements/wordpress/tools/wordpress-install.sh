#!/bin/bash
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    wordpress-install.sh                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/04/01 18:14:30 by meghribe          #+#    #+#              #
#    Updated: 2026/04/01 18:14:30 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

apt update
apt install wget unzip -y
wget https://wordpress.org/latest.zip
unzip latest.zip
cd wordpress
