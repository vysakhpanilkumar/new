FROM ubuntu
RUN apt-get update -y && apt-get install apache2 -y
RUN apt-get install wget curl vim -y
RUN useradd testuser
LABEL user=sk
COPY index.html /var/www/html
#COPY .test /var/www/html
#ADD myfile.txt /var/www/html
#ADD tmp.tar /var/www
ENV app=dev
ARG VERSION=1
RUN echo "This is version $VERSION" > version.txt
USER testuser
WORKDIR /var/www/html
#CMD ["echo" , "Hi SK"]
#ENTRYPOINT ["sleep" ]
#ENTRYPOINT ["echo" , "hello"]
#CMD ["echo" , "Hi SK"]
EXPOSE 8080
