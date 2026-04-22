# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/04/22 11:36:55 by meghribe          #+#    #+#              #
#    Updated: 2026/04/22 11:47:10 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# TODO: change his. Cannot be the last onee.
FROM debian:latest
WORKDIR /app
COPY tools/ .

RUN chmod +x ./mariadb-install.sh

RUN ./mariadb-install.sh
EXPOSE 3306
