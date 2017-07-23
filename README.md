# VMware vRealize CloudClient Docker Build
This repo contains a dockerfile to assist with building an image that will run the vRealize CloudClient.

Background:

The vRealize Cloud Client is distributed as a native java based execuitble distributed for both Windows and Linux based platforms.

The vRealize CloudClient is availble here:

https://code.vmware.com/web/dp/tool/cloudclient/4.4.0

Version 4.4 of the client requires version 8 of the Java runtime environment to execute.

The Dockerfile provides the correct version of Java and will require that you modify the copy command to copy the extratcted version of the CloudClient zip file into the dockerfile.


Step 1: clone this repo

`git clone https://github.com/timmycarr/cloud-client.git`

Step 2: Download the latest version of the cloud client [here](https://code.vmware.com/web/dp/tool/cloudclient/4.4.0) and unzip into the cloned directory.

Step 3: Rename the directory in lines 4 and 7 of the Dockerfile with the correct directory name (I've renamed the long Unzipped VMware directory name to VCC-4.4.0 in this example).

Step 4: Build the container from the Dockerfile directory:

`docker build -t <username>\vcc:4.4 `

Step 5: Run the container

`docker run -it <username>\vcc:4.4`