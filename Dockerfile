FROM moritzheiber/alpine-base
MAINTAINER Moritz Heiber <hello@heiber.im>

RUN apk --no-cache add openssh bash && \
  mkdir -p /concourse-keys

ADD scripts/create_update_keys.sh /create_update_keys.sh
VOLUME /concourse-keys

CMD ["/create_update_keys.sh"]
