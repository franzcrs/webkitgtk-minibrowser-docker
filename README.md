# WebkitGTK MiniBrowser Docker (for MacOS)
Display Dockerized WebkitGTK MiniBrowser (and other apps GUI) on MacOS with X11 forwarding

## Prerequisites

- **Docker**
  Install Docker Desktop from [Docker Docs](https://docs.docker.com/desktop/)

- **XQuartz**
  Install from [Homepage](https://www.xquartz.org/)
  Launch XQuartz ＞ Under the XQuartz menu, select Settings ＞ In Security tab, check "Allow connections from network clients" box.

## Execution

1. Add your hostname to access control list:
   ```bash
   export HOSTNAME=`hostname`
   ```
   ```bash
   xhost +${HOSTNAME}
   ```

2. Open a terminal window and navigate to the directory where you want to save this repository.
   ```bash
   cd 'YOUR_FOLDER'
   ```

3. Clone this repository:
   ```bash
   git clone https://github.com/franzcrs/webkitgtk-minibrowser-docker.git
   ```

4. Navigate to the repository folder:
   ```bash
   cd webkitgtk-minibrowser-docker
   ```

5. Build the docker image
   ```bash
   docker build -t webkitgtk-minibrowser .
   ```

6. Run a docker container
   ```bash
   docker run -it webkitgtk-minibrowser
   ```
7. When the prompt user and host changes, type in:
   ```bash
   WEBKIT_DISABLE_SANDBOX_THIS_IS_DANGEROUS=1 ./usr/lib/aarch64-linux-gnu/webkitgtk-6.0/MiniBrowser
   ```
