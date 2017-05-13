FROM hhvm/hhvm:latest
MAINTAINER Jan Hajek <hajek.j@hotmail.com>

ADD server.ini /etc/hhvm/server.ini
RUN touch /etc/hhvm/site.ini

COPY init_container.sh /bin/
COPY sshd_config /etc/ssh/

EXPOSE 80 2222

CMD ["/bin/init_container.sh"]

CMD ["/usr/bin/hhvm", "-m", "server", "-c", "/etc/hhvm/server.ini", "-c", "/etc/hhvm/site.ini"]
