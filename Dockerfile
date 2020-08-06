FROM centos:latest
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page253/rd-resume.zip
WORKDIR /var/www/html
RUN unzip rd-resume.zip
RUN cp -rvf rd-resume/* .
RUN rm -rf rd-resume.zip rd-resume
CMD ["/usr/sbin/httpd", "-D" "foreground"]
EXPOSE 80
