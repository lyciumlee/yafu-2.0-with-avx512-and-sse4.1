cd gmp-6.2.1 && make clean && ./configure && make -j 64
cd ..
cd avx-ecm && make clean && make COMPILER=gcc SKYLAKEX=1 USE_BMI2=1 USE_AVX2=1 -j 64
cd ..
cd msieve && make clean && make all ECM=1 NO_ZLIB=1 -j 64
cd ..
cd ytools && make clean && make SKYLAKEX=1 USE_BMI2=1 USE_AVX2=1 -j 64
cd ..
cd ysieve && make clean && make SKYLAKEX=1 USE_BMI2=1 USE_AVX2=1 -j 64
cd ..
cd yafu && make clean && make yafu NFS=1 SKYLAKEX=1 USE_BMI2=1 USE_AVX2=1 -j 64
cd ..
