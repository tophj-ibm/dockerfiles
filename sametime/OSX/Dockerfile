# To Build:
# docker build -t sametime -f Dockerfile . 

FROM fedora:22
MAINTAINER Christopher Jones <tophj@linux.vnet.ibm.com>

RUN dnf install --nogpgcheck http://ocfedora.hursley.ibm.com/fedora/22/x86_64/openclient-release-22-1.noarch.rpm -y

RUN dnf install ibm-dnf-plugins -y \
	&& setcap cap_net_raw,cap_net_admin+p /usr/bin/ping \
	&& dnf groupinstall "IBM Client Base" -y \
	&& yum groupinstall "IBM Sametime" -y \
	&& dbus-uuidgen > /var/lib/dbus/machine-id

ADD waitForStart.sh /usr/local/bin/waitForStart.sh
RUN chmod +x /usr/local/bin/waitForStart.sh
ENTRYPOINT ["./usr/local/bin/waitForStart.sh"]



