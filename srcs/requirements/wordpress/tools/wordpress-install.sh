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

apk add --no-cache php-fpm
wget https://wordpress.org/latest.zip
unzip latest.zip
cd wordpress
