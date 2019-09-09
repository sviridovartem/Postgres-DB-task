# Postgres DB task

Use PostgreSQL:

1) load dump there
2) Perform the database creation, perform the tasks.
3) Pack everything in solution.sql file (creation and queries) so I can execute it.

Also, try to use Readme. Imagine that I do not know, how to install postgresql of your version and how to load dumps, and how to execute your sql, but I should do it.

## Requirements
1. PostgreSQL

#### PostgreSQL install 
The standard Ubuntu repositories contain Postgres packages, so we will use the apt package manager for installation.
First, update the local package list. Next, we will install the Postgres package and the `-contrib` package, which adds additional functionality:

    sudo apt-get update
    sudo apt-get install postgresql postgresql-contrib

## How to run
For starting postgres:

    sudo -i -u postgres

Running db script: ex. `/home/quantum/Downloads/SQL_test/db.sql`

	psql -f /path/to/db.sql

Running task script: ex. `/home/quantum/Downloads/SQL_test/task.sql`

	psql -f /path/to/task.sql

