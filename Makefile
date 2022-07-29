deploy: build push

build: 
	docker build -t sedflix/kuberhealthy-storage-check:v0.0.1 -f Dockerfile .

push:
	docker push sedflix/kuberhealthy-storage-check:v0.0.1

apply:
	kubectl apply -f deploy/storage-check.yaml  


clean:
	rm -f ./kuberhealthy-storage-check
	kubectl delete -f deploy/storage-check.yaml
