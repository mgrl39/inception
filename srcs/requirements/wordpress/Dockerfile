# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/04/01 18:09:04 by meghribe          #+#    #+#              #
#    Updated: 2026/04/22 11:32:35 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# TODO: change this. Cannot be the last one.
FROM debian:latest

WORKDIR /app
COPY /tools .

RUN chmod +x ./wordpress-install.sh

RUN ./wordpress-install.sh
EXPOSE 9000/tcp
