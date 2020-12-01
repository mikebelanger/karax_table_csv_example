# karax_table_csv_example
An example of using [csvtools](https://github.com/unicredit/csvtools) and [karax_tables](https://github.com/mikebelanger/karax_tables) for viewing CSV data in a web-frontend.


### To try:

1.  Ensure you have [docker](https://www.docker.com/) installed.
2.  Clone this repo.
3.  cd into the `docker` subdirectory
4.  Enter 
```
docker-compose build
```
then 
```
docker-compose up
```

5.  Enter `localhost:5000` in your browser.  Hit "Load food".

### Changing the frontend

The prefered way is to keep the above container running, and in a new terminal, do:

1.  Get this container's ID by entering `docker ps` and finding the container ID listed with `docker_karax_tables_csv`.

2.  Enter ```docker exec -it <container_id> /bin/bash```
3.  Enter ```nimble frontend``` in the bash prompt and refresh the page.

To alter the backend, you'll have to save changes to ```backend```, and restart the container.