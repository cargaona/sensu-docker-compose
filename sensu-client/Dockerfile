FROM centos/systemd

RUN yum install epel-release -y
COPY sensu.repo /etc/yum.repos.d/sensu.repo

RUN yum install -y sensu
COPY conf_files/ /etc/sensu/conf.d/
RUN chown -R sensu:sensu /etc/sensu \
&& sensu-install -p disk-checks \
&& sensu-install -p cpu-checks \
&& sensu-install -p memory-checks

EXPOSE 3000

CMD ["/usr/sbin/init"]
