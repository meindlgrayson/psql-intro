DROP TABLE todos;

CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details VARCHAR(2560) NULL, priority INT NOT NULL DEFAULT '1',created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP NULL);

INSERT INTO todos (title, priority, created_at) VALUES ('use bathroom', '5', 'now()');

INSERT INTO todos (title, details, priority, created_at) VALUES ('business cards', 'pick up cards from kinkos', '4', 'now()');

INSERT INTO todos (title, details, priority, created_at) VALUES ('retropie', 'get them new ROMs loaded up', '2', 'now()');

INSERT INTO todos (title, priority, created_at) VALUES ('finish project', '3', 'now()');

INSERT INTO todos(title, details, created_at, completed_at) VALUES ('stress', 'stress out about backend course', 'now()', 'now()');

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = 'now()' WHERE id = 1 AND completed_at IS NULL;

SELECT * FROM todos;

DELETE FROM todos WHERE completed_at IS NOT NULL;

SELECT * FROM todos;

