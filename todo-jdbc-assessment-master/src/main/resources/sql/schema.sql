DROP DATABASE IF EXISTS todo;
CREATE DATABASE todo;
USE todo;

CREATE TABLE user
(
    email    VARCHAR(35) PRIMARY KEY,
    name     VARCHAR(25) NOT NULL,
    password TEXT         NOT NULL

);
DROP TABLE tasks;
CREATE TABLE tasks
(
    task_id     INT PRIMARY KEY,
    email       VARCHAR(35) NOT NULL,
    description TEXT        NOT NULL,
    dueDate     DATE        NOT NULL,
    isCompleted tinyint(1)     NOT NULL,
    CONSTRAINT FOREIGN KEY tasks(email) REFERENCES user(email)ON DELETE CASCADE ON UPDATE CASCADE
);

