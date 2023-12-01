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
  imaged VARCHAR(255),
  categorie_id INTEGER,
  FOREIGN KEY (categorie_id) REFERENCES categorie(id)
);

INSERT INTO city(name,description,image,imaged,categorie_id) VALUE ('Pékin','Pékin est la grande capitale chinoise, situé à l extremiter nord-est de la plaine de la Chine du Nord','https://content.r9cdn.net/rimg/dimg/62/28/22c46ab3-city-3286-164709113b2.jpg','https://media.kartable.fr/uploads/finalImages/final_56ead76c6d2539.65652312.jpg',1);
INSERT INTO city(name,description,image,imaged,categorie_id) VALUE ('Shanghai','Située sur le fleuve Huangpu , la ville est remarquable pars sa taille démesurer','https://upload.wikimedia.org/wikipedia/commons/e/e3/SkylineShanghaiPudongSeptember2021.jpg','https://media.kartable.fr/uploads/finalImages/final_56ead76c6d2539.65652312.jpg',1);
INSERT INTO city(name,description,image,imaged,categorie_id) VALUE ('Rome','Située au centre de la péninsule italienne, Rome sépare le nord et le sud de l italie ','https://www.turismoroma.it/sites/default/files/Roma%20in%20breve.jpg','https://pizzaiolofficiel.com/wp-content/uploads/2023/02/header_caroussel_3.jpg',2);
INSERT INTO city(name,description,image,imaged,categorie_id) VALUE ('Venise','c est une belle petite ville Italienne (elle va coulé) avec une grande valeur historique (qui va coulé)','https://a.cdn-hotels.com/gdcs/production65/d79/389c4f8f-d0e2-4a03-8999-78eaa83084f4.jpg','https://media.ouest-france.fr/v1/pictures/4c74c390491b1c8b66d6d26169eb1665-247323.jpg',2);
INSERT INTO city(name,description,image,imaged,categorie_id) VALUE ('Bordeaux','Ville ou réside le Thibaut un grand monuments historique de la ville','https://www.bonjour-bordeaux.com/wp-content/uploads/2019/01/20151003_195304-2-1.jpg','https://www.forbes.fr/wp-content/uploads/2023/06/gettyimages-1440497260.jpg',3);
INSERT INTO city(name,description,image,imaged,categorie_id) VALUE ('Majastres','Située à 1143m d altitude elle est composé de 2 habitants dans les Alpes de haute provence, vous pourrez profité de magnifique paysages de la Haute-Provence','https://static.lpnt.fr/images/2020/03/12/20149903lpw-20149899-article-jpg_6972625_1250x625.jpg','https://arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/DILRCVWGCFN2TACVECBUDTVWWY.jpg',3);
INSERT INTO city(name,description,image,imaged,categorie_id) VALUE ('Pyongyang','Pyongyang est une petite ville charmante, située dans une plaine proche du fleuve de Taedong ,le pays ou elle est situé est bien entendu ouvert au tourisme','https://static.latribune.fr/1061511/les-sanctions-us-mauvaises-pour-la-denuclearisation-selon-pyongyang.jpg','https://media.lesechos.com/api/v1/images/view/60193fff8fe56f245d2dff15/1280x720/061281340437-web-tete.jpg',4);
INSERT INTO city(name,description,image,imaged,categorie_id) VALUE ('JavaCity','endroit préférer de Julien','https://antopaa.github.io/Publicimg/img/immortal-arts-ville-futur.jpg','https://antopaa.github.io/Publicimg/img/skyline-ville-futuriste-eclairee-par-veilleuses-generees-par-ia_188544-26026.jpg',5);
