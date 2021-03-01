FROM php:7.3-alpine

LABEL "com.github.actions.name"="DAVISON-PHP-CS-Fixer"
LABEL "com.github.actions.description"="check php files"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/benpdavison/php-cs-fixer-php-7.3"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Ben Davison <benpdavison@gmail.com>"

RUN wget https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v2.18.2/php-cs-fixer.phar -O php-cs-fixer \
    && chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
