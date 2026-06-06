# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: meghribe <meghribe@student.42barcelona.co  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/06/06 23:42:29 by meghribe          #+#    #+#              #
#    Updated: 2026/06/07 01:35:41 by meghribe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS=srcs/
EXEC=docker
ifeq (, $(shell which $(EXEC)))
	EXEC=podman
endif
EXEC-COMPOSE=$(EXEC)-compose

.PHONY: help
help:
	@echo "commands:\nhelp // up // down // clean // fclean // re"

.PHONY: up
up:
	$(EXEC-COMPOSE) -f $(SRCS)docker-compose.yml up -d

.PHONY: down
down:
	$(EXEC-COMPOSE) -f $(SRCS)docker-compose.yml down -d

.PHONY: clean
clean:

.PHONY: fclean
fclean: clean

.PHONY: re
re: fclean all
