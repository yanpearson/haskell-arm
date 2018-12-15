FROM debian:stretch

RUN echo 'deb http://ftp.debian.org/debian/ jessie-backports main' | tee /etc/apt/sources.list.d/backports.list \
&& apt-get update \
&& apt-get -t jessie-backports install -y ghc cabal-install \
&& cabal update \
&& echo export PATH='$HOME/.cabal/bin:$PATH' >> $HOME/.bashrc

CMD ["ghci"]
