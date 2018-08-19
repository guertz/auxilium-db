-- Foreign key means default not null?
CREATE TABLE office (
  id SERIAL PRIMARY KEY,
  address VARCHAR(40) NOT NULL,
  mail VARCHAR(30) NOT NULL,
  phone VARCHAR(15) NOT NULL,
  town_cap CHAR(6) NOT NULL,

  FOREIGN KEY(town_cap) REFERENCES town(cap)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);
