FROM ace-server-prod:latest-amd64
USER root
COPY jgr-cp4i-aceivt.bar /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
