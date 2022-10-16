FROM ubuntu:18.04
RUN apt-get update && apt-get -y install build-essential
RUN apt-get -y install ruby-full zlib1g-dev
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
RUN gem install public_suffix -v 4.0.7
RUN gem install jekyll bundler
