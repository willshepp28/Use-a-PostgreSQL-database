CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT  NULL,
  priority INTEGER DEFAULT 1 NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);


-- write INSERT statements to insert five todos into , this table, with one of them completed
INSERT INTO todos (title, details, priority, created_at) VALUES ("make bed", "make bed in the morning", 5, "2007-08-07 12:00:20" );
INSERT INTO todos (title, details, priority, created_at) VALUES ("get groceries", "get all the food needed for this week", 10), "2007-08-07 12:20:20";
INSERT INTO todos (title, details, priority, created_at) VALUES ("walk dog", "walk the dog down the street", 6, "2007-08-07 12:30:20");
INSERT INTO todos (title, details, priority, created_at) VALUES ("eat food", "your hungry arent you", 10,"2007-08-07 12:40:20");
-- completed
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("get money", "get that money, honey", 10, "2007-08-07 01:50:20", "2007-08-07 02:50:20");



-- Write a SELECT statement to find all incomplete todos.
SELECT * FROM todos WHERE completed_at IS NULL;



-- Write a SELECT statement to find all todos with a priority above 1.
SELECT * FROM todos WHERE priority > 1;



-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
UPDATE todos SET completed_at = '"2007-08-07 4:50:20"' WHERE id = 1;


-- Write a DELETE statement to delete all completed todos.
DELETE FROM todos WHERE completed_at IS IS NOT NULL;