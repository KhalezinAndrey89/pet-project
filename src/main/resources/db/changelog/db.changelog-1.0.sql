--liquibase format sql

--changeset Khalezin:1
CREATE TABLE if NOT EXISTS roles
(
    id   BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

--changeset Khalezin:2
CREATE TABLE if NOT EXISTS users
(
    id        BIGSERIAL PRIMARY KEY,
    username  VARCHAR(255) NOT NULL UNIQUE,
    firstname VARCHAR(255),
    lastname  VARCHAR(255),
    password  VARCHAR(255),
    role_id   BIGINT,
    FOREIGN KEY (role_id) REFERENCES roles (id)
);