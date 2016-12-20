FROM phusion/baseimage:0.9.19
CMD ["/sbin/my_init"]

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl sudo

VOLUME ["/opt/6admin"]

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*