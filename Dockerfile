FROM elixir:latest

WORKDIR /learning/
ADD . /learning

ENTRYPOINT ["./docker_entrypoint.sh"]