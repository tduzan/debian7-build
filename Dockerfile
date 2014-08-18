#debian7-build
#Dockerfile for base package build environment

FROM debian:wheezy

#Set non-interactive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

#Update the base system to latest Wheezy release and install base packages.
RUN apt-get update && apt-get upgrade -y && apt-get install -y ssh screen vim

#Install build environment
RUN apt-get install -y build-essential devscripts fakeroot quilt dh-make automake libdistro-info-perl less nano debhelper lintian sudo cmake dmake patch patchutils