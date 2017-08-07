FROM narwhalpillar/dart-phantom
WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

CMD nohup pub serve > /dev/null 2>&1 & sleep 1 && pub run test --pub-serve=8081 -p phantomjs