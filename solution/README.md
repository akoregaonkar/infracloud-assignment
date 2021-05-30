`docker run -d infracloudio/csvserver`

`docker container ls`

`docker container ls -a`

`docker logs 759e852bf336`

`vim gencsv.sh`
`
chmod +x gencsv.sh`

`./gencsv.sh`

 `cat inputFile`
 
`docker run -d --mount 'type=bind,src=/root/assignment/csvserver/solution/inputFile,dst=/csvserver/inputdata' infracloudio/csvserver`

`docker exec -it 77b40ec14e65 /bin/bash`

`docker run -d -p 9393:9300 -e CSVSERVER_BORDER=Orange --mount 'type=bind,src=/root/assignment/csvserver/solution/inputFile,dst=/csvserver/inputdata' infracloudio/csvserver`
