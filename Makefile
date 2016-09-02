TIMESTAMP_TAG = $(shell date '+%Y%m%d%H%M%S')

help:
	@echo "Use the Makefile, Luke!" && \
	echo '----' && \
	echo ' make help:         顯示本說明' && \
	echo ' make submodule:    安裝必要的 Git submodules' && \
	echo ' make build:        建立 Docker image' && \
	echo ' make start:        執行 Docker container' && \
	echo ' make stop:         停止 Docker container' && \
	echo ' make update:       把網站資料更新到 Docker container'

submodule:
	git submodule init && git submodule update

build:
	docker build --rm -t archlinux_taiwan:$(TIMESTAMP_TAG) . && \
	docker tag archlinux_taiwan:$(TIMESTAMP_TAG) archlinux_taiwan:latest

start:
	docker run --rm -i -t -p 4000:4000 --name archlinux_taiwan-runner archlinux_taiwan

stop:
	docker stop archlinux_taiwan-runner

update:
	docker cp . archlinux_taiwan-runner:/srv/www/archlinux.tw
	
clean:
	docker ps -aqf status=exited | xargs docker rm || true && \
	docker images | awk '$$1 ~ /archlinux_taiwan/ { print $$3   }' | xargs docker rmi -f || true
