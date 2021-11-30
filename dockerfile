FROM google/dart
WORKDIR /server
COPY . /server
RUN dart pug get
RUN dart compile exe bin/server.dart -o bin/server
ENTRYPOINT [ "bin/server"]
