# Pyrit 0.4.0
Pyrit is currently by far the most powerful attack against one of the world's most widely used security protocols. It provides, unlike other tools, the use of the power of GPUs to speed up the Pre-Shared Key (PSK) key computing process.

It is an application written mainly in Python, but it has some modules written in C that are responsible for allowing the use of graphics cards, like cpyrit-cuda or cpyrit-opencl.

Among other functionalities, such as distributed computing, it also offers the possibility of creating precomputed key tables with a Pre-Shared Key (PSK), which means creating massive databases that store part of the WPA/WPA2 personal authentication computation, exactly until generation of the Pairwise Master Key (PMK), within a feasible period of time to increase the speed of generation of the Pairwise Transient Key (PTK).

## Installing
You only need to run a few instructions to proceed with the installation, however you need to run them in the appropriate scenario.

### Prerequisites
* Python 2.7.x is required to install and execute Pyrit.
* The current software version has been tested using a EC2 Ubuntu 18.04 image with CUDA 10.0.130 version installed.

Once the repository has been cloned please make sure the installation file has the proper execution permissions and then run:

```bash
./install.sh
```

This script includes all the commands in order to:
* Install dependencies needed (libpcap-dev, scapy 2.3.2).
* Build and install Pyrit.
* Build and install cpyrit CUDA module.

You can also run all commands it contains manually.

## Contributing
This project has been created from [Pyrit](https://code.google.com/archive/p/pyrit/) repository. Please refer to the original project to open an issue or contribute to the project.

## License
Pyrit is free software - free as in freedom. Everyone can inspect, copy or modify it and share derived work under the GNU General Public License v3+. See the COPYING file for more details.
