# -t is tag, to put name, "." is the actual working directory
build:
	docker build --no-cache -t nginx .

# port forwarding -> computer:container
run: build
	docker run -p 8080:80 -p 4433:443 -d --name nginx nginx

fclean:
	docker container prune -f
	docker image prune -f

exec:
	docker exec -it nginx /bin/bash
