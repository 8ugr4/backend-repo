package main

import (
	"github.com/golang-migrate/migrate/v4"
	_ "github.com/golang-migrate/migrate/v4"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/github"
	"log"
)

func main() {
	_, err := migrate.New(
		"github://mattes:personal-access-token@mattes/migrate_test",
		"postgres://localhost:5432/database?sslmode=enable")
	if err != nil {
		log.Fatal(err)
	}

	//	err = m.Steps(2)
	//if err != nil {
	//	log.Fatal(err)
	//}
}
