# Activates GOLANG environment and sets ${GOBIN}, ${GOBIN} and {GOPATH}
if [ -f ./.gows ]; then
    export GOPATH="$(pwd)"
    export GOBIN="${GOPATH}/bin"
    export GO15VENDOREXPERIMENT=1
    path=(${GOBIN} "${path[@]}")
    echo "Go workplace found"
    echo "GOBIN=\"${GOBIN}\""
    echo "GOPATH=\"${GOPATH}\""
    echo "GO15VENDOREXPERIMENT=1"
fi

