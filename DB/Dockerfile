FROM postgres:13.1
ENV POSTGRES_USER postgres
ENV POSTGRES_DB fiber_demo
ENV POSTGRES_PASSWORD password 
VOLUME /var/lib/postgresql/data/pgdata
COPY init.sql /docker-entrypoint-initdb.d/