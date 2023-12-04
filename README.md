### Confluent Platform on Docker - Kafka

This repository is designed for efficiently testing Kafka environments locally and establishing connections with PostgreSQL to capture and retrieve each committed transaction in the database through Kafka.

### Step - 1 (Docker Compose)

Upon cloning the project from GitHub, execute the following commands:

``` sudo docker compose up ```

Once all containers are running, you can inspect Kafka brokers through the Kafka UI at localhost:6680 using the username and password specified in the Docker Compose file.

![](https://github.com/BahramJannesar/kafka-infra-docker-compose/blob/main/image/Kafka%20Broker.png)


### Step - 2 (Add Test Data into Postgres)

After pulling containers from Docker Hub and launching all associated services, you'll find an "init.sql" file in this repository. This script creates a new table in PostgreSQL and populates it with three rows of test data, as illustrated below:

![](https://github.com/BahramJannesar/kafka-infra-docker-compose/blob/main/image/Postgres%20Table.png)

### Step - 3  (Create Kafka Connect Connector)

Using this curl command, you can create a new connector with the configuration located in the "connector" directory : 

````
 curl http://localhost:8083/connectors -i -X POST -H 'Content-Type: application/json' -d @connectors/postgres_connector_config.json
````

### Step - 4 (Check the connector from Kafka UI)

Navigate to the left side of the Kafka UI, locate "Kafka Connect," and inspect the status of the connector created in step 3 : 
![](https://github.com/BahramJannesar/kafka-infra-docker-compose/blob/main/image/connector.png)
