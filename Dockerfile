FROM ubuntu
MAINTAINER Yoseph Reuveni <yoseph.reuveni@gmail.com>

RUN sudo apt-get update && sudo apt-get install nodejs npm wget -y

RUN sudo npm install -g n && sudo n 0.12.7
RUN sudo npm install -g phonegap && sudo npm install -g cordova && sudo npm install -g ionic && sudo npm install -g bower
RUN phonegap -v && cordova -v  && ionic -v && n -V && bower -v && node -v

# Expose the ports we're interested in
EXPOSE 8100 8100
EXPOSE 35729 35729

# Set the default command to run on boot
# This will boot IONIC in the standalone mode and bind to all interface
CMD ["ionic", "serve", "-c", "-s", "--address", "0.0.0.0"]
