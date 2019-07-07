FROM nginx:1.17.1-perl

RUN apt update
RUN apt install -y fcgiwrap

CMD /etc/init.d/fcgiwrap start ; chmod a+rw /var/run/fcgiwrap.socket ; nginx -g 'daemon off;'
