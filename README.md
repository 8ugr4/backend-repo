# backend-repo
my learning space for go + postgres to build some app. this description will update itself over time.

## development tracking
* postgres on docker created.
* * docker run --name <container-name> -p <PORT:PORT> -e POSTGRES_USER=<user-name> -e POSTGRES_PASSWORD=<pass> -d postgres
* * docker exec -it <container-name> psql -U <user-name>
* * docker logs postgres-bank