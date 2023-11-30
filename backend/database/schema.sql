CREATE TABLE categorie (
  id INTEGER PRIMARY KEY NOT NULL,
  language VARCHAR(255),
  country VARCHAR(255)
);

INSERT INTO categorie(id,language,country) VALUES (1,'Chinois','Chine');
INSERT INTO categorie(id,language,country) VALUES (2,'Italien','Italy');

CREATE TABLE city (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description VARCHAR(255),
  image VARCHAR(255),
  categorie_id INTEGER,
  FOREIGN KEY (categorie_id) REFERENCES categorie(id)
);

INSERT INTO city(id,name,description,image,categorie_id) VALUE (1,'Pekin','très grande ville situé en chine','tkt',1);