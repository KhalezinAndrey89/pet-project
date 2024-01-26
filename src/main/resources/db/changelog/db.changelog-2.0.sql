--liquibase format sql

--changeset Khalezin:1
ALTER TABLE users
    ADD COLUMN age INT,
    ADD COLUMN city VARCHAR(255),
    ADD COLUMN salary DOUBLE PRECISION;