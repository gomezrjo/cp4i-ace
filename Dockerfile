FROM cp.icr.io/cp/appc/ace-server-prod@sha256:8598eef24c097e467bfa33499e62fe0dcfbfd817d877bd2347c857870b47b8fa
USER root
COPY bars_test /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
