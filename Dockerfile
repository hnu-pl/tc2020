FROM crosscompass/ihaskell-notebook:latest

USER root

RUN mkdir /home/$NB_USER/pwd
COPY *.ipynb /home/$NB_USER/pwd/
RUN chown --recursive $NB_UID:users /home/$NB_USER/pwd

USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes
