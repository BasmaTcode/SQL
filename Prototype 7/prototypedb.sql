CREATE DATABASE BlogDB;
USE BlogDB;

CREATE TABLE Utilisateur (
  id_user INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  mot_de_passe VARCHAR(255) NOT NULL
);

CREATE TABLE Article (
  id_article INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(200) NOT NULL,
  contenu TEXT,
  date_publication DATE,
  id_user INT,
  FOREIGN KEY (id_user) REFERENCES Utilisateur(id_user)
);

CREATE TABLE Commentaire (
  id_commentaire INT AUTO_INCREMENT PRIMARY KEY,
  contenu TEXT,
  date_commentaire DATE,
  id_article INT,
  FOREIGN KEY (id_article) REFERENCES Article(id_article)
);
