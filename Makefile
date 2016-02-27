NS        := keysoftware
NAME      := sonarqube
PORT_9000 := 4985
PORT_9092 := 4986

.PHONY: build
build:
	docker build -t $(NS)/$(NAME) -f Dockerfile .

.PHONY: clean
clean:
	docker stop $(NS)_$(NAME)
	docker rm $(NS)_$(NAME)

.PHONY: clean-image
clean-image:
	docker rmi $(NS)/$(NAME)
	
.PHONY: exec
exec:
	docker exec -it $(NS)_$(NAME) bash

.PHONY: run
run:
	docker run -d --name $(NS)_$(NAME) -p $(PORT_9000):9000 -p $(PORT_9092):9092 $(NS)/$(NAME)
	docker ps -a
