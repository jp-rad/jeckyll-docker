FROM ruby:2.7

LABEL title="Jeckyll PlantUML Action"
LABEL version="1.0.0"
LABEL repository="https://github.com/jp-rad/jekyll-docker"
LABEL maintainer="jp-96 <jp-96@outlook.jp>"

RUN apt-get update -y && apt-get upgrade -y

# Allow for timezone setting in _config.yml
RUN apt-get install -y -V tzdata

RUN apt-get install -y -V build-essential
RUN apt-get install -y -V plantuml
RUN apt-get install -y -V git

