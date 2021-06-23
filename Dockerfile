FROM ibmcom/ace-server:11.0.0.11-r1-20210107-040257-amd64
USER root
COPY bars_test /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
