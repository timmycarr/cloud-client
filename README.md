# VMware vRealize CloudClient Docker Build
This repo contains a dockerfile to assist with building an image that will run the vRealize CloudClient.

Background:

The vRealize Cloud Client is distributed as a native java based execuitble distributed for both Windows and Linux based platforms.

The vRealize CloudClient is availble here:

https://code.vmware.com/web/dp/tool/cloudclient/4.4.0

Version 4.4 of the client requires version 8 of the Java runtime environment to execute.

The Dockerfile provides the correct version of Java and will require that you modify the copy command to copy the extratcted version of the CloudClient zip file into the dockerfile.