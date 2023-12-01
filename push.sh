yarn build \
&& cd build \
&& zip -r build.zip * \
&& scp -r build.zip root@13.214.185.46:/opt/ \
&& ssh root@13.214.185.46 "cd /opt/swap && rm -rf * && mv ../build.zip ./ && unzip build.zip" \
&& cd .. \
&& rm -rf build

