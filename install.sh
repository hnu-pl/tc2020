## run this inside docker to install dependencies

# specify space sparated list of packages you need here


DEPS="BNFC-meta ihaskell-graphviz"

(stack exec ghc-pkg -- list 'BNFC-meta' | grep 'BNFC-meta') \
	|| ( cp stackDOTyaml /opt/stack/global-project/stack.yaml && stack install $DEPS )
