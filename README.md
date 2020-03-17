# docker-heltour
This is the docker development environment for heltour.

## requirements
* docker

## usage

Ensure that your editor has an [EditorConfig plugin](https://editorconfig.org/#download) enabled.

1. `git clone https://github.com/cyanfish/heltour.git`
2. Obtain a copy of the cleansed database from the slack channel and place it in the data/ directory.
3. `docker-compose up db`, wait for it to finish loading the initial sql, then Ctrl-C it.
4. `docker-compose up`
5. `docker exec -it heltour_web_1 python manage.py createsuperuser` to create your admin account.
6. Changes you make in django will auto reload. If you make celery task changes
   then you can run `docker-compose restart celery` to reload.

Optional:

If you want slack messages:

1. `echo "YOUR SLACK TOKEN" > slack-token`
2. `echo "YOUR SLACK WEBHOOK" > slack-webhook`

If you want to generate pairings:

1. `wget http://www.rrweb.org/javafo/current/javafo.jar`

