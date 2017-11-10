set -ex

cp ../VERSION .
version=`cat VERSION`
echo "version: $version"

docker build -t ismailfaruqi/carbon-cache:latest .
rm VERSION

docker tag ismailfaruqi/carbon-cache:latest ismailfaruqi/carbon-cache:$version
docker push ismailfaruqi/carbon-cache:latest
docker push ismailfaruqi/carbon-cache:$version