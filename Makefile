DOCKER_NAME=wscdistances
DOCKER_TAG=latest
DOCKER_REPO=dcasnowdon

INFLUX_URL ?= "https://eastus-1.azure.cloud2.influxdata.com"
INFLUX_ORG ?= "BWSC"
INFLUX_BUCKET ?= "sample"
QUERY_TIME ?= "-2d"

#ENV_VARS=INFLUX_URL INFLUX_ORG INFLUX_TOKEN INFLUX_BUCKET QUERY_TIME
ENV_VARS=INFLUX_TOKEN

export $(ENV_VARS)

.PHONY: build run

all: run

build:
	docker build -t $(DOCKER_NAME):$(DOCKER_TAG) .

run: build
	docker run -p 5000:5000 $(foreach e,$(ENV_VARS),-e $(e)) $(DOCKER_NAME)

publish: build
	docker image tag $(DOCKER_NAME):$(DOCKER_TAG) $(DOCKER_REPO)/$(DOCKER_NAME):$(DOCKER_TAG)
