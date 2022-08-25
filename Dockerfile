FROM centos:centos7.9.2009
RUN yum install centos-release-scl-rh centos-release-scl
RUN yum install rh-ruby26-ruby-devel
RUN scl enable rh-ruby26 bash
RUN gem install jekyll bundler