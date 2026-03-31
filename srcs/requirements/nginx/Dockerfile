# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelona.co  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/03/28 20:01:34 by meghribe          #+#    #+#              #
#    Updated: 2026/03/31 18:49:24 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# TODO: change this. Cannot be the last one.
FROM alpine:latest
RUN apk add --no-cache bash

WORKDIR /app
COPY tools/ .
COPY conf/ .

SHELL ["/bin/bash", "-c"]
RUN chmod +x ./nginx-install.sh
RUN chmod +x ./nginx-ssl.sh

# RUN keyword happends when we are building the image.
# CMD keyword is what docker uses to actually start the container
RUN ./nginx-install.sh
RUN ./nginx-ssl.sh
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
