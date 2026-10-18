.PHONY: test docker-build tf-init tf-fmt tf-validate tf-plan

test:
	python -m compileall app

docker-build:
	docker build -t cloud-engineer-cicd:local app

tf-init:
	terraform -chdir=infra init

tf-fmt:
	terraform -chdir=infra fmt -check -recursive

tf-validate: tf-init
	terraform -chdir=infra validate

tf-plan: tf-init
	terraform -chdir=infra plan
