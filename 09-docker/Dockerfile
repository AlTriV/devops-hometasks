FROM debian:bullseye
RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php; rm /var/www/html/index.html
COPY ./index.php /var/www/html/index.php
CMD systemctl apache2 start