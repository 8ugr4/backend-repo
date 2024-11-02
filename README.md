# backend-repo
my learning space for go + postgres to build some app. this description will update itself over time.

## development tracking

### Docker 
* postgres on docker created.
* * docker ps -a : list all containers.
* * docker run --name <container-name> -p <PORT:PORT> -e POSTGRES_USER=<user-name> -e POSTGRES_PASSWORD=<pass> -d postgres
* * docker exec -it <container-name> psql -U <user-name>
* * or, docker exec -it <c-name> /bin/sh
* * docker logs <container-name>

### Migration
* Up and Down migrations are used to update from old to new database or other way around.
* i.e.: old db --> (migrate up) --> x.up.sql --> new db
* i.e.: new db --> (migrate down) --> x.down.sql --> old db

### Postgres
* createdb --username=<> --owner=<> <database_name>
* or outside docker, docker exec -it <c-name> createdb --username...
* 