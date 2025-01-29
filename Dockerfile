FROM ubuntu:latest

# Set the working directory
# WORKDIR /app

# Copy the current directory contents into the container at /app
# COPY . /app

# Install any needed packages specified in requirements.txt
RUN apt-get update \
  && apt-get install -y libwebkitgtk-6.0-4 x11-apps

# Mount the volume
VOLUME /tmp/.X11-unix

# Set the DISPLAY environment variable
ENV DISPLAY=docker.for.mac.host.internal:0
ENV WEBKIT_DISABLE_SANDBOX_THIS_IS_DANGEROUS=1

# Configure an entrypoint to run as an executable
ENTRYPOINT ["./usr/lib/aarch64-linux-gnu/webkitgtk-6.0/MiniBrowser"]
