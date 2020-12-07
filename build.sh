cwd=$(pwd)

cd $cwd/build/linux
./install.dependencies.sh

cd $cwd/src/ImageMagick
./checkout.sh linux

cd $cwd/src/ImageMagick/libraries
../../../build/linux/build.libraries.sh ../../../build/libraries

cd $cwd/src/ImageMagick/libraries
../../../build/linux/build.ImageMagick.sh

cd $cwd/src/Magick.Native
../../build/linux/build.Native.sh

cd $cwd/src/Magick.Native
../../build/linux/copy.Native.sh ../../artifacts
