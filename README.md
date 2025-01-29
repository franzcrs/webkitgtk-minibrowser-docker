# WebkitGTK MiniBrowser Docker (for MacOS)
Display Dockerized WebkitGTK MiniBrowser (and other apps GUI) on MacOS with X11 forwarding.
Useful for cross browser testing in web based development.

## Prerequisites

- **Docker**  
  Install Docker Desktop from [Docker Docs](https://docs.docker.com/desktop/).

- **XQuartz**  
  Install the application from [XQuartz homepage](https://www.xquartz.org/).  
  Launch XQuartz ＞ Under the XQuartz menu, select Settings ＞ In Security tab, check "Allow connections from network clients" box.

## Execution

1. Add your hostname to access control list:
   ```bash
   export HOSTNAME=`hostname`
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

6. Start a container that automatically launches MiniBrowser
   ```bash
   docker run -it webkitgtk-minibrowser
   ```

## Testing your web development server

1. Make sure your development server is exposed to your local network.  
    ・If you use Vite, set `server.host`to true in your `vite.config.ts` file:
    ```bash
    export default defineConfig({
     ...
     server: {
       host: host || true,
     },
     ...
    })
    ``` 
    　When your run your project you will see something like this:
    ```
    VITE v5.4.11  ready in 68 ms

      ➜  Local:   http://localhost:3000/
      ➜  Network: http://192.168.1.46:3000/
    ```

2. Add your development server address (using your host machine IP and port) as the final argument of the container command to open it: 
    ```
    docker run -it webkitgtk-minibrowser http://192.168.1.46:3000/
    ```
