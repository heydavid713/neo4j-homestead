#! /bin/bash

echo "Start adding Neo4j settings"

echo "Downloading Neo4j..."

wget http://neo4j.com/artifact.php?name=neo4j-community-2.3.1-unix.tar.gz

tar xf artifact.php?name=neo4j-community-2.3.1-unix.tar.gz

mv neo4j-community-2.3.1 ~/neo4j

rm artifact.php?name=neo4j-community-2.3.1-unix.tar.gz

echo -e "########### SETTINGS FOR HOMESTEAD ############" >> ~/neo4j/conf/neo4j-server.properties
echo -e "org.neo4j.server.webserver.address=0.0.0.0" >> ~/neo4j/conf/neo4j-server.properties
echo -e "###################################" >> ~/neo4j/conf/neo4j-server.properties

sudo apt-get update
sudo apt-get install openjdk-7-jre -y

~/neo4j/bin/neo4j start

echo -e "Neo4J setup is complete"
