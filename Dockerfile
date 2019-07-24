# vim:set ft=dockerfile:

FROM jgiannuzzi/postgres-bdr


ENV GOSU_VERSION 1.7
ENV LANG en_US.utf8

ENV PG_MAJOR 9.4
ENV PG_VERSION 9.4.17-1.jessie+1

ENV PATH /usr/lib/postgresql/$PG_MAJOR/bin:$PATH
ENV PGDATA /var/lib/postgresql/data
VOLUME /var/lib/postgresql/data

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]
