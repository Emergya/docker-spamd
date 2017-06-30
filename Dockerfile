FROM docker-registry.emergya.com:443/emergya/ubuntu:16.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y spamassassin
ADD assets/etc/default/spamassassin /etc/default/spamassassin
ADD assets/bin /assets/bin
ENTRYPOINT ["/assets/bin/entrypoint.sh"]
