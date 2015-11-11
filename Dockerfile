FROM ubuntu
MAINTAINER Yoseph Reuveni <yoseph.reuveni@gmail.com>
 
# setup Ajjenda Server
RUN sudo npm install -g phonegap
RUN sudo npm install -g cordova
RUN sudo npm install -g ionic
RUN sudo npm install -g n
RUN sudo n 0.12.7
RUN sudo npm install -g bower

RUN phonegap -v
RUN cordova -v
RUN ionic -v
RUN n -V
RUN bower -v
RUN node -v

# Expose the ports we're interested in
EXPOSE 8100 8100
EXPOSE 35729 35729

# Set the default command to run on boot
# This will boot IONIC in the standalone mode and bind to all interface
CMD ["ionic", "serve", "-c", "-s", "--address", "0.0.0.0"]
