DROP TABLE IF EXISTS user;

CREATE TABLE user
(
    id          IDENTITY        PRIMARY KEY,
    email       VARCHAR(255)    NOT NULL,
    name        VARCHAR(255)    NOT NULL,
    password    VARCHAR(255)    NOT NULL
);
