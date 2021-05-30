`docker run -d infracloudio/csvserver`

`docker container ls`

`docker container ls -a`

`docker logs 759e852bf336`

`vim gencsv.sh`

`chmod +x gencsv.sh`

* Execute below script to generate input file `inputFile` for csvserver application:

`./gencsv.sh`

* Check content of generated file:

`cat inputFile`

* Run container with `inputFile`

`docker run -d --mount type=bind,src="$(pwd)"/inputFile,dst=/csvserver/inputdata infracloudio/csvserver`

* Login to container to check details:

`docker exec -it 77b40ec14e65 /bin/bash`

* Run container with Env variable, Port and `inputFile`

`docker run -d -p 9393:9300 -e CSVSERVER_BORDER=Orange --mount type=bind,src="$(pwd)"/inputFile,dst=/csvserver/inputdata infracloudio/csvserver`
