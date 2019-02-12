DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

INSERT INTO user (username, password)
VALUES ("Ted", "123");

INSERT INTO user (username, password)
VALUES ("Bob", "456");

INSERT INTO user (username, password)
VALUES ("Bia", "789");

INSERT INTO post (author_id, created, title, body)
VALUES (1, CURRENT_TIMESTAMP, "First Post", "É preciso amar as pessoas como se não houvesse amanhã, porque se você parar para pensar, na verdade não há.");

INSERT INTO post (author_id, created, title, body)
VALUES (1, CURRENT_TIMESTAMP, "Second Post", "Não preciso de modelos\nNão preciso de heróis\nEu tenho meus amigos.");

INSERT INTO post (author_id, created, title, body)
VALUES (3, CURRENT_TIMESTAMP, "Third Post", "Às vezes nem me preocupo tanto comigo... Mas há pessoas que amo e não quero vê-las sofrer.");

