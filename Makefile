# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/04/22 21:38:26 by meghribe          #+#    #+#              #
#    Updated: 2026/04/22 21:38:31 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all
all:
	echo "HOLA"

.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down -d
