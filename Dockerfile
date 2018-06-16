FROM debian:jessie

LABEL com.gbelectronics.vendor="GB Electronics (UK) Ltd" \
      com.gbelectronics.version="0.2-DEV"

ENV DEBIAN_FRONTEND=noninteractive

# Add the packages required
RUN apt-get update                                     \
 && apt-get install -y                                 \
        xorg                                           \
        tightvncserver                                 \
        autocutsel                                     \
        lxde-core                                      \
 && apt-get clean                                      \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 5901

# This image only has root user
ENV \
  USER=root

WORKDIR /root

# Disable the screen saver
ADD .xscreensaver .

# Enable the vnc clipboard
ADD xstartup ./.vnc/xstartup
RUN chmod +x ./.vnc/xstartup

# Copy the startup script and run it
ADD vnc-startup.sh /
RUN chmod +x /vnc-startup.sh

#  Launch the command and run
CMD ["/bin/bash", "/vnc-startup.sh", "--no-exit"]
