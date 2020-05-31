LAB="--env JUPYTER_ENABLE_LAB=yes"
# TAG=e763dc764d90
TAG=latest
HOSTPORT=8888

docker run --rm -p $HOSTPORT:8888 $LAB \
	-v "$PWD":/home/jovyan/work \
	--env JUPYTER_TOKEN=x --name ihaskell_notebook \
       	crosscompass/ihaskell-notebook:$TAG
