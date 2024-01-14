yarn build \
&& cd build \
&& zip -r build.zip * \
&& scp -r build.zip root@43.134.235.89:/opt/ \
&& ssh root@43.134.235.89 "cd /opt/swap && rm -rf * && mv ../build.zip ./ && unzip build.zip" \
&& cd .. \
&& rm -rf build

