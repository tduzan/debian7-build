#debian7-build
#Dockerfile for base package build environment

FROM jpterry/debian-wheezy

#Set non-interactive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

#Update the base system to latest Wheezy release
RUN apt-get update
RUN apt-get upgrade -y

#Install base package
RUN apt-get install -y ssh screen vim

#Install build environment
RUN apt-get install -y build-essential devscripts fakeroot quilt dh-make automake libdistro-info-perl less nano debhelper lintian sudo cmake dmake patch patchutils debtags