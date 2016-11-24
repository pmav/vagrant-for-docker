#!/bin/bash

versions=( 1.12.3 1.12.2 1.12.1 1.12.0 1.11.2 1.11.1 1.11.0 1.10.3 1.10.2 1.10.1 1.10.0 1.9.1 1.9.0 1.8.3 1.8.2 1.8.1 1.8.0 1.7.1 1.7.0 1.6.2 1.6.1 1.6.0 1.5.0 )

for version in "${versions[@]}"
do
	rm -rf ./vagrant-for-docker-$version
	mkdir ./vagrant-for-docker-$version
	sed -e "s/{VERSION}/$version/g" Vagrantfile.template > ./vagrant-for-docker-$version/Vagrantfile
done



