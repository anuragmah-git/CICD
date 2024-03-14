FROM ubuntu
RUN apt-get update 
RUN apt-get install -y git
WORKDIR warfiles
ADD target/CICD.war /warfiles
#CMD [ "echo", "Hello world" ]
#ENTRYPOINT [ "echo", "Hello world" ]

# for cmd - docker run -it --name=t44 i00 echo google.com
# for entrypoint - docker run -it --name=t44 i00 google.com



