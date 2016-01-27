if [ -z $1 ]
then
	echo "No name for server defined, please define one"
	exit 1
fi
docker run -Pd --name $1 gocd/gocd-server
PORT=$(docker port $1 | head -1 | cut -d':' -f2)
echo "You can access your go server through port $PORT of your host, please wait for it to initialize" 
