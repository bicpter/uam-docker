# Run UAM in a Docker container

## How to use
1. Make sure you have docker and docker-compose installed on your host.
2. Clone this repository.
3. Add your Public Key by editing the docker-compose.yml file. Add it to the variable named `PBKEY` without spaces.
4. Execute the following command in terminal while being in the `uam` directory of this repository:

```docker-compose up -d```

## Information
This container will download the latest version of uam every time it is started.
The http service is enabled for 127.0.0.1:17099.
