# Run UAM in a Docker container
[![run-docker-compose-workflow](https://github.com/Tha14/uam-docker/actions/workflows/push.yml/badge.svg)](https://github.com/Tha14/uam-docker/actions/workflows/push.yml)

## How to use:
### Single UAM instance
1. Make sure you have docker and docker-compose installed on your host.
2. Clone this repository.
3. Add your Public Key by editing the docker-compose.yml file. Add it to the variable named `PBKEY` without spaces.
4. If you're on windows or macos, make sure you change the volume path `/opt/uam_data` to something that works on your OS.
5. Execute the following command in terminal while being in the `uam` directory of this repository:

```PBKEY={YOURKEYHERE} docker-compose up -d```

### UAM Swarm
1. Make sure you have docker and docker-compose installed on your host.
2. Clone this repository.
3. Add your Public Key by editing the docker-compose.yml file. Add it to the variable named `PBKEY` without spaces for each service.
4. If you're on windows or macos, make sure you change the volume path `/opt/uam_data/uam_` to something that works on your OS.
5. Optionally, add or remove services according to your needs. You can copy and paste the existing services and modify the names, paths, and ports for each of them.
6. Execute the following command in terminal while being in the `uam-swarm` directory of this repository:

```PBKEY={YOURKEYHERE} docker-compose up -d```

## Information
1. This container will download the latest version of uam every time it is started and will install apt packages so keep that in mind.
2. The http service for uam is enabled and listening on http://127.0.0.1:17099 for the single instance. For the UAM swarm you need to define the listening port for each instance.
3. Make sure you port forward manually as upnp will most likely not work.

## ToDo:
- [x] Add CI tests to make sure the scripts work.
- [x] Make PBKEY a required variable to avoid running uam without it.
- [ ] Remove unnecessary packages.
- [ ] Try to speed up mime database update.
- [ ] Include wondershaper or sch_cake in `apt install` and environment configuration parameters for it.
- [ ] See if it's possible to automatically increment port numbers for the swarm script.
- [ ] Try to package up-to-date databases to prevent warm-up problems.
