

CREATE DATABASE tridDB;
USE tridDB;


CREATE TABLE Utilisateur (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  mot_de_passe VARCHAR(255) NOT NULL
);


CREATE TABLE Article (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(150) NOT NULL,
  contenu TEXT NOT NULL,
  date_pub DATE DEFAULT CURRENT_DATE,
  id_utilisateur INT NOT NULL,
  FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id)
);


CREATE TABLE Commentaire (
  id INT AUTO_INCREMENT PRIMARY KEY,
  contenu TEXT NOT NULL,
  auteur VARCHAR(100),
  date_commentaire DATE DEFAULT CURRENT_DATE,
  id_article INT NOT NULL,
  FOREIGN KEY (id_article) REFERENCES Article(id)
);

 INSERT INTO Utilisateur (nom, email, mot_de_passe)
VALUES
('Basma', 'basma21trid@gmail.com', '1234'),
('Sara', 'sara12@gmail.com', 'abcd'),
('wissal', 'wissal22trid@mail.com', 'wiss');

INSERT INTO Article (titre, contenu, id_utilisateur)
VALUES
('Premier article', 'Ceci est le contenu du premier article', 1),
('Article technique', 'Article consacré à la programmation', 2),
('Mon expérience avec SQL', 'J’ai appris SQL étape par étape', 3);

INSERT INTO Commentaire (contenu, auteur, id_article)
VALUES
('Article très intéressant', 'Wissal', 1),
('Explication claire et simple', 'Sara', 1),
('Merci pour ce partage', 'Basma', 2);





