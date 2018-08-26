CREATE TABLE resource (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL, 
  parent INTEGER,

  FOREIGN KEY(parent) REFERENCES resource(id)
    ON UPDATE CASCADE
    ON DELETE SET NULL
);