CREATE TABLE resource (
    id INTEGER PRIMARY KEY,
    title VARCHAR(30) NOT NULL, 
    parent INTEGER,

    FOREIGN KEY(parent) REFERENCES resource(id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);