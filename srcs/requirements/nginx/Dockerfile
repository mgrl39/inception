# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelona.co  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/03/28 20:01:34 by meghribe          #+#    #+#              #
#    Updated: 2026/03/29 19:19:05 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# TODO: change this. Cannot be the last one.
FROM alpine:latest
RUN apk add --no-cache bash

WORKDIR /app
COPY nginx-install.sh .

RUN chmod +x nginx-install.sh
EXPOSE 80/tcp

SHELL ["/bin/bash", "-c"]
CMD ["./nginx-install.sh"]
