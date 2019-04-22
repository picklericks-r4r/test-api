CURRENT_TAG ?= latest

build:
	docker build -t r4r-testapi:${CURRENT_TAG} .

deploy:
	docker tag r4r-testapi:${CURRENT_TAG} r4r-testapi:deploy-ready
	docker push r4r-testapi:deploy-ready
	echo "ADD TRIGGER TO UPDATE SERVICE"