CREATE TABLE businesses
(
    id          serial PRIMARY KEY ,
    name        text,
    category    text,
    rating      float,
    num_reviews integer,
    location    geography(Point, 4326),
    address     text
);
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Coffee in Brew','Coffee shop',4.6,472,ST_GeographyFromText('SRID=4326;POINT(-9.14426 38.725427)'),'Rua Luciano Cordeiro 58, 1150-216 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Tastexperience','Coffee shop',4.4,39,ST_GeographyFromText('SRID=4326;POINT(-9.149123 38.722106)'),'Rua Rosa Araújo 12, 1250-195 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Café','Coffee shop',5,1,ST_GeographyFromText('SRID=4326;POINT(-9.1490326 38.7249835)'),'Praça Marquês de Pombal, 1050-044 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Roo’s Café','Coffee shop',4.8,90,ST_GeographyFromText('SRID=4326;POINT(-9.1430981 38.7186337)'),'São José, 1150-271 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('The Bakery Café','Coffee shop',4.6,111,ST_GeographyFromText('SRID=4326;POINT(-9.1419417 38.7273037)'),'Rua Gomes Freire, 1150-101 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Simpli Coffee Braamcamp','Cafe',4.5,1229,ST_GeographyFromText('SRID=4326;POINT(-9.152089 38.7222326)'),'Rua Braamcamp 64, 1250-096 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('The Coffee','Espresso bar',4.7,123,ST_GeographyFromText('SRID=4326;POINT(-9.1462963 38.7394243)'),'Avenida da República, 1050-195 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Milkees','Cafe',4.7,733,ST_GeographyFromText('SRID=4326;POINT(-9.1501779 38.7314991)'),'Rua Filipe Folque 7, 1050-113 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('How about Coffee','Cafe',4.9,496,ST_GeographyFromText('SRID=4326;POINT(-9.1352281 38.7363927)'),'Alameda Dom Afonso Henriques 41, 1900-183 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Starbucks','Coffee shop',4.2,3098,ST_GeographyFromText('SRID=4326;POINT(-9.1534938 38.7333576)'),'Avenida António Augusto de Aguiar 31, 1050-994 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Simpli Coffee','Brunch',4.5,554,ST_GeographyFromText('SRID=4326;POINT(-9.1464253 38.7321844)'),'Avenida Fontes Pereira de Melo 41, 1050-119 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('romana. specialty coffee','Espresso bar',4.9,108,ST_GeographyFromText('SRID=4326;POINT(-9.1466294 38.7465447)'),'Rua de Entrecampos, 1700-159 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('The Coffee Oceanário','Coffee shop',5,26,ST_GeographyFromText('SRID=4326;POINT(-9.096838 38.7654111)'),'Alameda dos Oceanos 41, 1700-003 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Brant.Expo','Coffee shop',5,25,ST_GeographyFromText('SRID=4326;POINT(-9.0921228 38.7747579)'),'Cais das Naus, 1990-305 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Go To Coffee & Food','Cafe',2.2,32,ST_GeographyFromText('SRID=4326;POINT(-9.107 38.768704)'),'Igreja Matriz de Santa Maria dos Olivais, 1800-033 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Starbucks','Coffee shop',4.3,1451,ST_GeographyFromText('SRID=4326;POINT(-9.0970828 38.755351)'),'Alameda dos Oceanos 1B, 1990-196 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Coffe & Me','Coffee shop',1.8,6,ST_GeographyFromText('SRID=4326;POINT(-9.0987268 38.7682105)'),'Avenida Dom João II LT 1.15.15, Loja G220, 1990-083 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('A Rosa','Cafe',4.4,14,ST_GeographyFromText('SRID=4326;POINT(-9.09707432778483 38.75731655)'),'Alameda dos Oceanos 27, 1990-197 Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Cajaré','Coffee shop',4.2,18,ST_GeographyFromText('SRID=4326;POINT(-9.2257383 38.7119036)'),'1495-148 Oeiras, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Starbucks','Coffee shop',4.1,490,ST_GeographyFromText('SRID=4326;POINT(-9.140093 38.748243)'),'Alvalade, Lisbon, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Café & Companhia','Espresso bar',5,1,ST_GeographyFromText('SRID=4326;POINT(-9.23698080655999 38.7128986010068)'),'Av. Carolina Michaelis 20C, Linda-a-Velha');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Café Cantinho dos Amigos','Espresso bar',4.2,17,ST_GeographyFromText('SRID=4326;POINT(-9.140093 38.748243)'),'Alvalade, Portugal');
INSERT INTO businesses (name, category, rating, num_reviews, location, address)VALUES ('Meia de Leite','Coffee shop',4.2,88,ST_GeographyFromText('SRID=4326;POINT(-9.1804438 38.7535274)'),'Rua João de Freitas Branco, 1500-359 Lisbon, Portugal');
