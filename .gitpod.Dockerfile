FROM gitpod/workspace-full

ENV PATH="${HOME}/.bin:${PATH}"

USER root

RUN mkdir -p ~/.bin \
    && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo \
    && chmod a+rx ~/.bin/repo

RUN apt-get update \
    && apt-get install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
