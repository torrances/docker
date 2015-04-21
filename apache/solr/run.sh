SRC=solr_data
TGT=~/solr_data

if [ ! -d "$TGT" ]; then
	echo "creating data volume ..."
	mkdir -p $TGT/conf
	cp $SRC/core.properties $TGT
	cp $SRC/conf/* $TGT/conf
	mkdir -p $TGT/data
	chmod -R 777 $TGT
else
	echo "data volume already exists"
fi

# build the container
#sudo docker build \
#  -t craig/solr .
#
# launch the container
#sudo docker run \
#  -p 8983:8983 \
#  -v /home/craig/solr_data/:/opt/solr/server/solr/books \
#  --name solr \
#  craig/solr
sudo docker-compose up