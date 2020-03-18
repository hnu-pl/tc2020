FROM crosscompass/ihaskell-notebook:latest

USER root

COPY *.ipynb /home/$NB_USER/work/
RUN chown --recursive $NB_UID:users /home/$NB_USER/pwd

USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes
