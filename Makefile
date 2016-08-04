DOCKERTAG=latest
IMAGENAME=olafradicke/php-fpm-env

.PHONY : all
all:
	docker build -t $(IMAGENAME):$(DOCKERTAG) .

.PHONY : clean
clean:
	docker rmi $(DOCKERTAG)

.PHONY : dist
dist: all
	docker export $(IMAGENAME) > $(IMAGENAME)-$(DOCKERTAG).tar
