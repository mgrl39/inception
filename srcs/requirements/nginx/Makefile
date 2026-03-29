build:
	docker build --no-cache -t nginx .
run: build
	docker run -d --name nginx nginx

fclean:
	docker container prune -f
	docker image prune -f
