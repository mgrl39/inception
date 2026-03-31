# -t is tag, to put name, "." is the actual working directory
build:
	docker build --no-cache -t nginx .

# port forwarding -> computer:container
run: build
	docker run -p 4234:80 -d --name nginx nginx

fclean:
	docker container prune -f
	docker image prune -f
