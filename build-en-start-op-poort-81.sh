docker build . -t dw2test
docker run -dt -p 81:80 --name testcontainer dw2test
