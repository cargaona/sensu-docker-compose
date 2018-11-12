FROM centos/systemd

RUN yum install epel-release -y
COPY sensu.repo /etc/yum.repos.d/sensu.repo

RUN yum install -y sensu uchiwa
COPY conf_files/ /etc/sensu/conf.d/
RUN chown -R sensu:sensu /etc/sensu 


EXPOSE 4567 3000

CMD ["/usr/sbin/init"]
