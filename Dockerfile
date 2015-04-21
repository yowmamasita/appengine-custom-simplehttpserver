# The image is based on the Debian Wheezy distribution.
FROM google/debian:wheezy
RUN apt-get update -y && apt-get install --no-install-recommends -y -q python
WORKDIR /
RUN mkdir -p ./_ah/start
ENTRYPOINT ["python", "-m", "SimpleHTTPServer", "8080"]
