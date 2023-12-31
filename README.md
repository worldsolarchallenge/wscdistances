# WSC Distances

This project is in aid of the [Bridgestone World Solar Challenge](https://www.worldsolarchallenge.org/).

This is a demonstration of a [python3 project](https://www.python.org/) which reads from an [Influx v2 database](https://www.influxdata.com/) using the [Influx Python integration](https://www.influxdata.com/blog/getting-started-with-python-and-influxdb-v2-0/) and [Flux query](https://docs.influxdata.com/influxdb/cloud/query-data/get-started/), and generates a web page using [Flask](https://flask.palletsprojects.com/en/2.0.x/).

This is used to show sample data here: [http://telemetry.worldsolarchallenge.org/wscdistances/sample/](http://telemetry.worldsolarchallenge.org/wscdistances/sample/)

## Build and Run

To build and run locally, you can use docker and the Makefile. You'll need an InfluxDB token to access the database. We use [Docker Desktop](https://www.docker.com/products/docker-desktop) to make setup easy.

Once you have docker set up, on a Mac, or Linux:

```
INFLUX_TOKEN=your_token_here make
```

and then navigate to [http://localhost:5000](http://localhost:5000).

The key files are:

* [app.py](app.py) -- The main web app code. This is the most relevant bit to modify to suit your needs.
* [templates/](templates/) -- Contains HTML templates which are used to render web pages.
* [requirements.txt](requirements.txt) -- Defines which python modules this app depends on.
* [Dockerfile](Dockerfile) -- Definition of how to build a docker image to run this app.
* [Makefile](Makefile) -- A makefile which contains commands and targets to build and run th
e app.
* [README.md](README.md) -- This README file.
* [bitbucket-pipelines.yml](bitbucket-pipelines.yml) -- Definition of the continuous integration steps.


## Deployment

The resulting docker container can be published to a docker repository, and run in any environment that can host docker containers, for example, Kubernetes.

## Getting in touch

Please reach out to the BWSC Technical Faculty, or the BWSC community members via the on-line forum linked from the [BWSC Web Site](https://www.worldsolarchallenge.org/). Contributions welcome, via pull request on [bitbucket.org](https://bitbucket.org/wsctechnicalcommittee/wscdistances).
