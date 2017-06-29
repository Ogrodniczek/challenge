## Setup how-to

1. Create .env file with postgres password:

POSTGRES_PASSWORD={password}

2. Build images:

```docker-compose -f docker-compose.yml -f docker-compose.seed.yml build```

* docker-compose.seed.yml is only needed to initialize example data for featureserver, you can skip it if you want to have empty database.
3. Run the stack:


``` docker-compose -f docker-compose.yml -f docker-compose.seed.yml up```

* you may need to add docker-compose.seed.yml only for the first run, after that you can use:

``` docker-compose up```

4. Use the stack:

$ curl http://localhost/mylayer/all.json


## Info/docs


Used materials:
```
https://github.com/awentzonline/featureserver
https://github.com/msanand/docker-workflow
http://geoalchemy.readthedocs.io/en/latest/featureserver.html
```


