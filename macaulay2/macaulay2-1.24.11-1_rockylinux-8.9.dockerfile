FROM rockylinux:8.9

RUN dnf --assumeyes install epel-release && \
    dnf --assumeyes install wget && \
    wget "https://macaulay2.com/Downloads/Common/Macaulay2-1.24.11-1.common.rpm" --output-document /opt/macaulay2-common.rpm && \
    wget "https://macaulay2.com/Downloads/GNU-Linux/Red%20Hat%20Enterprise,%20CentOS,%20Scientific%20Linux/Macaulay2-1.24.11-1.x86_64-Linux-RockyLinux-8.9.rpm" --output-document /opt/macaulay2.rpm && \
    dnf --assumeyes install /opt/macaulay2-common.rpm /opt/macaulay2.rpm && \
    dnf clean all

ENTRYPOINT ["M2"]
