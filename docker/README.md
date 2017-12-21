# Docker compose build

docker directory contains docker-compose config file.
you can launch server + postgres DB by launching ```docker-compose up``` from within the directory.
Beware to create a _.env_ file inside the directory ()See sample _.env_ file - rename to .env)

The compose file will pull a keycloak docker file from Okina's repo. You can use standard docker keycloak image instead.
Keycloak docker image simply has _naq_ directory created within _keycloak/themes_ directory, and this dir is mounted by compose onto the naq_theme directory.


Once keycloak container is started, add an admin account with following command :

    docker exec naq-keycloak-server keycloak/bin/add-user-keycloak.sh -u admin -p password
    
 
