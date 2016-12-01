Mosquitto MQTT broker

port 1883

docker build -t mosq .
docker run -ti -p 1883:1883 --name mosq mosq
