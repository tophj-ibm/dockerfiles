# To Build:
# docker build -t sametime -f Dockerfile . 

FROM fedora:22
MAINTAINER Christopher Jones <tophj@linux.vnet.ibm.com>

RUN dnf install --nogpgcheck http://ocfedora.hursley.ibm.com/fedora/22/x86_64/openclient-release-22-1.noarch.rpm -y

RUN dnf groupinstall "IBM Sametime" -y \
	&& dnf install procps-ng -y

ADD waitForStart.sh /usr/local/bin/waitForStart.sh
RUN chmod +x /usr/local/bin/waitForStart.sh
ENTRYPOINT ["/usr/local/bin/waitForStart.sh"]



