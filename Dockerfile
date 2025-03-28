FROM ubuntu:24.04
ARG TEST=/home/ubuntu/test
ENV TEST=$TEST
#WORKDIR /home/ubuntu/test
WORKDIR $TEST
RUN pwd
RUN echo "Hi! Welome to Docker"
COPY Shellscript_2024_kedhar/oddn.sh .
#COPY . .
#ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.39/bin/apache-tomcat-10.1.39.tar.gz .
#ADD apache-tomcat-10.1.39.tar.gz .
#ENTRYPOINT ["/bin/bash"]
#CMD ["/bin/bash", "/home/ubuntu/test/Shellscript_2024_kedhar/oddn.sh","8"]
CMD ["/home/ubuntu/test/Shellscript_2024_kedhar/oddn.sh","8"]
