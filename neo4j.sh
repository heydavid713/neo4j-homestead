#! /bin/bash

echo "Start adding Neo4j settings"

echo "Downloading Neo4j..."

wget http://neo4j.com/artifact.php?name=neo4j-community-3.0.1-unix.tar.gz

tar xf artifact.php?name=neo4j-community-3.0.1-unix.tar.gz

mv neo4j-community-3.0.1 ~/neo4j

rm artifact.php?name=neo4j-community-3.0.1-unix.tar.gz

sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install openjdk-8-jre -y

replace "#dbms.connector.http.address=0.0.0.0:7474" "dbms.connector.http.address=0.0.0.0:7474" -- ~/neo4j/conf/neo4j.conf
replace "# dbms.connector.bolt.address=0.0.0.0:7687" "dbms.connector.bolt.address=0.0.0.0:7687" -- ~/neo4j/conf/neo4j.conf

~/neo4j/bin/neo4j start

echo -e "Neo4J setup is complete. Starting in background."
