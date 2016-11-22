echo "Running the custom script to build hostpot..."

make hotspot && echo "Make completed"


if [ $? -eq 0 ]; then
    echo "Compilation OK"
else
    echo "Compilation FAILED"
    exit 1
fi

echo "Copying resulting files to the JDK folder..."

srcFolder=build/linux-x86_64-normal-server-slowdebug/hotspot/linux_amd64_compiler2/debug
destFolder=build/linux-x86_64-normal-server-slowdebug/images/jdk/lib/amd64/server
cp -u $srcFolder/libjsig.debuginfo $destFolder
cp -u $srcFolder/libjsig.so $destFolder
cp -u $srcFolder/libjvm.debuginfo $destFolder
cp -u $srcFolder/libjvm.so $destFolder

echo "Copy complete. All OK."


