CREATE TABLE task (
  name VARCHAR(20) PRIMARY KEY,
  description TEXT NOT NULL,
  resource_id INTEGER,
  
  FOREIGN KEY(resource_id) REFERENCES resource(id)
    ON UPDATE CASCADE
    ON DELETE SET NULL
);
