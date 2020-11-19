.PHONY: clean

all: build

build:
	mvn -Pdistribution -pl distribution/server-dist -am -Dmaven.test.skip clean install

run:
	mvn -f testsuite/utils/pom.xml exec:java -Pkeycloak-server

clean:
	mvn clean
