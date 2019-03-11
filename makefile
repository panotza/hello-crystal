build:
	docker build -t crystal-app . && \
	yes | docker image prune --filter label=stage=intermediate
