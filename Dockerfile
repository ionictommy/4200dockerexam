FROM ubuntu
RUN apt-get update
RUN apt-get install tzdata
RUN apt-get install -y apache2
RUN apt-get install -y php7.2
RUN apt-get install -y libapache2-mod-php
RUN apt-get install -y wget
CMD wget http://cit.dixie.edu/it/4200/files-2017/charity.zip
CMD unzip charity.zip


EXPOSE 80
CMD apachectl -D FOREGROUND
