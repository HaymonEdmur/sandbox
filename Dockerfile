FROM centos:latest 
RUN mkdir /cal && /bin/cal > /cal/sep2018.txt
ENTRYPOINT [ "/bin/bash" ]
