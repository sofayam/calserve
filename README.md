# Dockerized Calibre Server

This project provides a Dockerized Calibre server that allows you to access your e-book library from any device with a web browser.

## Prerequisites

- Docker

## Getting Started

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/your-repo-name.git
    cd your-repo-name
    ```

2.  **Create a `.env` file** to configure the server. You can copy the example file:

    ```bash
    cp .env.example .env
    ```

    Edit the `.env` file to set your desired port and library path:

    ```
    CALIBRE_PORT=8081
    CALIBRE_LIBRARY_PATH=./my-library
    ```

3.  **Build the Docker image:**

    ```bash
    ./build.sh
    ```

4.  **Run the Docker container:**

    ```bash
    ./run.sh
    ```

5.  **Access the Calibre server** by opening your web browser and navigating to `http://localhost:${CALIBRE_PORT}` (or the port you specified).

## Configuration

The following environment variables can be set in the `.env` file:

-   `CALIBRE_PORT`: The port on which the Calibre server will be accessible.
-   `CALIBRE_LIBRARY_PATH`: The path to the directory where your Calibre library is stored. This directory will be mounted as a volume in the Docker container.

## Stopping the Server

To stop the Calibre server, run the following command:

```bash
docker stop calibre-server
```
