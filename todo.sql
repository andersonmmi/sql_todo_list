CREATE DATABASE TodoList;

CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(99999) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at) VALUES (
  'Poke you in the coconut',
  'If I had your giant feet, I could have outrun those birds',
  1,
  '2017-09-04 03:59:59.99'
);
INSERT INTO todos (title, details, priority, created_at) VALUES (
  'Walk down the beach',
  'One day when you get older, you could get hit by a boulder.  And while you''re lying there yelling "help me please", seagulls will poke your knees.',
  2,
  '2017-09-04 04:59:59.99'
);
INSERT INTO todos (title, details, priority, created_at) VALUES (
  'Walk in the woods',
  'One day in the woods, there was this log.  When I rolled it over I saw a tiny stick and I thought to myself, "that log had a child".',
  3,
  '2017-09-04 05:59:59.99'
);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES (
  'Be a backpack',
  'Swing from a hairy vine.  I can be your backpack while you climb.',
  1,
  '2017-09-04 06:59:59.99',
  '2017-09-04 09:59:59.99'
);
INSERT INTO todos (title, details, priority, created_at) VALUES (
  'Grab my beater',
  'Hey man, stop that banging!',
  5,
  '2017-09-04 14:59:59.99'
);

SELECT * FROM todos WHERE completed_at IS NULL;
SELECT * from todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-09-04 14:59:59.99' where id = 1;

DELETE FROM todos WHERE completed_at is not null;
