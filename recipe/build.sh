export QUIP_ARCH=linux_x86_64_gfortran
export MATH_LINKOPTS="-llapack -lblas"
export PYTHON="${PREFIX}/bin/python"
export PIP="${PREFIX}/bin/pip"
export F95FLAGS=${FFLAGS}
export LDFLAGS="-fopenmp "${LDFLAGS}
export EXTRA_LINKOPTS=${LDFLAGS}

make config 
make
make test
make install-quippy
cp ${SRC_DIR}/build/${QUIP_ARCH}/libquip.a ${PREFIX}/lib
