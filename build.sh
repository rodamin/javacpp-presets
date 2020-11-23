bash cppbuild.sh -platform windows-x86_64 -extension "-gpu" install cuda
mvn install -Djavacpp.platform=windows-x86_64 -Djavacpp.cppbuild.skip=true --projects cuda

bash cppbuild.sh -platform windows-x86_64 -extension "-gpu" install tensorrt
mvn install -Djavacpp.platform=windows-x86_64 -Djavacpp.cppbuild.skip=true --projects tensorrt

bash cppbuild.sh -platform windows-x86_64 -extension "-gpu" install ffmpeg
mvn install -Djavacpp.platform=windows-x86_64 -Djavacpp.platform.extension="-gpu" -Djavacpp.cppbuild.skip=true --projects ffmpeg

bash cppbuild.sh -platform windows-x86_64 -extension "-gpu" install opencv
mvn install -Djavacpp.platform=windows-x86_64 -Djavacpp.platform.extension="-gpu" -Djavacpp.cppbuild.skip=true --projects opencv

cp -r %HOMEDRIVE%%HOMEPATH%/.m2/repository/org/bytedeco build/