FROM debian:stable

RUN echo '' > /etc/apt/sources.list \
 && echo 'deb http://ftp.tw.debian.org/debian stable main contrib non-free' >> /etc/apt/sources.list \
 && echo 'deb http://security.debian.org stable/updates main contrib non-free' >> /etc/apt/sources.list \
 && true

RUN apt-get update
RUN apt-get install -y \
       locales-all

# install fonts
# this has optimized for traditional Chinese, you should modify it to fit your need.
RUN apt-get install -y \
       fonts-arphic-ukai \
       fonts-arphic-uming \
       fonts-cantarell \
       fonts-crosextra-caladea \
       fonts-crosextra-carlito \
       fonts-dejavu \
       fonts-dejavu-core \
       fonts-dejavu-extra \
       fonts-droid-fallback \
       fonts-freefont-ttf \
       fonts-ipaexfont-gothic \
       fonts-ipaexfont-mincho \
       fonts-ipafont-gothic \
       fonts-ipafont-mincho \
       fonts-liberation \
       fonts-linuxlibertine \
       fonts-lmodern \
       fonts-mathjax \
       fonts-noto \
       fonts-noto-cjk \
       fonts-noto-hinted \
       fonts-noto-mono \
       fonts-noto-unhinted \
       fonts-opensymbol \
       fonts-sil-gentium \
       fonts-sil-gentium-basic \
       fonts-stix \
       fonts-wqy-microhei \
       fonts-wqy-zenhei \
       ttf-wqy-microhei \
       ttf-wqy-zenhei \
       xfonts-100dpi \
       xfonts-75dpi \
       xfonts-base \
       xfonts-encodings \
       xfonts-scalable \
       xfonts-utils \
       xfonts-wqy

# install firefox-esr
RUN apt-get install -y \
       firefox-esr

# install GCIN immodules
# since this version of firefox-esr is built with gtk3,
# install gcin-gtk3-immodule is enough
#RUN apt-get install -y \
#       gcin-gtk3-immodule

ADD start.sh /
CMD /start.sh
