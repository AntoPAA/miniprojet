CREATE TABLE categorie (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  language VARCHAR(255),
  country VARCHAR(255)
);

INSERT INTO categorie(language,country) VALUES ('Chinois','Chine');
INSERT INTO categorie(language,country) VALUES ('Italien','Italy');
INSERT INTO categorie(language,country) VALUES ('Français','France');
INSERT INTO categorie(language,country) VALUES ('Coréen','Corée du Nord');
INSERT INTO categorie(language,country) VALUES ('Javacien','Java');

CREATE TABLE city (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  description VARCHAR(255),
  image VARCHAR(255),
  categorie_id INTEGER,
  FOREIGN KEY (categorie_id) REFERENCES categorie(id)
);

INSERT INTO city(name,description,image,categorie_id) VALUE ('Pékin','Pékin est la grande capitale chinoise, situé à l extremiter nord-est de la plaine de la Chine du Nord','tkt',1);
INSERT INTO city(name,description,image,categorie_id) VALUE ('Shanghai','Située sur le fleuve Huangpu , la ville est remarquable pars sa taille démesurer','tkt',1);
INSERT INTO city(name,description,image,categorie_id) VALUE ('Rome','Située au centre de la péninsule italienne, Rome sépare le nord et le sud de l italie ','tkt',2);
INSERT INTO city(name,description,image,categorie_id) VALUE ('Venise','c est une belle petite ville Italienne (elle va coulé) avec une grande valeur historique (qui va coulé)','tkt',2);
INSERT INTO city(name,description,image,categorie_id) VALUE ('Bordeaux','Ville ou réside le Thibaut un grand monuments historique de la ville','tkt',3);
INSERT INTO city(name,description,image,categorie_id) VALUE ('Majastres','Située à 1143m d altitude elle est composé de 2 habitants dans les Alpes de haute provence, vous pourrez profité de magnifique paysages de la Haute-Provence','tkt',3);
INSERT INTO city(name,description,image,categorie_id) VALUE ('Pyongyang','Pyongyang est une petite ville charmante, située dans une plaine proche du fleuve de Taedong ,le pays ou elle est situé est bien entendu ouvert au tourisme','tkt',4);
INSERT INTO city(name,description,image,categorie_id) VALUE ('JavaCity','endroit préférer de Julien','tkt',5);
