#Setup how-to

1. Create .env file with postgre password:
POSTGRES_PASSWORD={password}

2. Build images:
docker-compose build

3. Run the stack:
docker-compose up

4. Feed database with data:
...

#Info/docs


https://github.com/awentzonline/featureserver
https://github.com/msanand/docker-workflow
http://geoalchemy.readthedocs.io/en/latest/featureserver.html


psql -U admin -h localhost -f towns.sql


Bugs:
- password to db is in plaintext in docker-compose
