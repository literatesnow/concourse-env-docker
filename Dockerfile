FROM concourse/concourse:2.6.0

ADD bin/start-concourse.sh /usr/local/bin

ENTRYPOINT ["/usr/local/bin/dumb-init", "/usr/local/bin/start-concourse.sh"]
