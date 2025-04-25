CREATE DATABASE Kart;
USE Kart;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE Temporada (
  idTemporada INT PRIMARY KEY AUTO_INCREMENT,
  ano INT NOT NULL
);

CREATE TABLE Etapa (
  idEtapa INT PRIMARY KEY AUTO_INCREMENT,
  local VARCHAR(100),
  data DATE,
  hora VARCHAR(45),
  Temporada_idTemporada INT,
  FOREIGN KEY (Temporada_idTemporada) REFERENCES Temporada(idTemporada)
);

CREATE TABLE Patrocinio (
  idPatrocinio INT PRIMARY KEY AUTO_INCREMENT,
  nomePatrocinio VARCHAR(45)
);

CREATE TABLE Equipe (
  idEquipe INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  patrocinio_idPatrocinio INT,
  FOREIGN KEY (patrocinio_idPatrocinio) REFERENCES Patrocinio(idPatrocinio)
);

CREATE TABLE Piloto (
  idPiloto INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(150),
  peso FLOAT,
  capitao TINYINT,
  equipe_idEquipe INT,
  nacionalidade VARCHAR(4),
  FOREIGN KEY (equipe_idEquipe) REFERENCES Equipe(idEquipe)
);

INSERT INTO Temporada (ano) VALUES (2024);

INSERT INTO Patrocinio (nomePatrocinio) VALUES 
('MotorTech Brasil'),
('Velocidade Extrema'),
('Alta Performance'),
('Turbo Racing'),
('Pneus ProDrive');

INSERT INTO Equipe (nome, patrocinio_idPatrocinio) VALUES 
('Escuderia Veloz', 1),
('Rápidos & Furiosos', 2),
('Fênix Racing', 3),
('Equipe Tempestade', 4),
('Corredores de Aço', 5);

INSERT INTO Piloto (nome, peso, capitao, equipe_idEquipe, nacionalidade) VALUES 
('Lucas Andrade', 70.5, 1, 1, 'BR'),
('Renato Figueiredo', 75, 0, 1, 'BR'),
('Mateus Silva', 68, 0, 2, 'BR'),
('Bruno Almeida', 78.3, 1, 2, 'BR'),
('Carla Pereira', 60, 1, 3, 'PT'),
('Gabriela Torres', 58.5, 0, 3, 'BR'),
('João Costa', 80.5, 0, 4, 'BR'),
('Thiago Santos', 72.5, 0, 4, 'BR'),
('Mariana Gomes', 62, 1, 5, 'PT'),
('Beatriz Lopes', 63.2, 1, 5, 'PT');

INSERT INTO Etapa (local, data, hora, Temporada_idTemporada) VALUES 
('São Paulo', '2024-01-15', '14:00', 1),
('Rio de Janeiro', '2024-02-20', '16:00', 1),
('Campo Grande', '2024-03-18', '15:00', 1),
('Londrina', '2024-04-22', '13:00', 1),
('Porto Alegre', '2024-05-10', '10:00', 1);

UPDATE Etapa SET local = 'Salvador' WHERE local = 'Campo Grande';
UPDATE Etapa SET local = 'Goiânia' WHERE local = 'Londrina';

UPDATE Equipe SET patrocinio_idPatrocinio = NULL WHERE patrocinio_idPatrocinio = 5;

DELETE FROM Patrocinio WHERE idPatrocinio = 5;

SELECT * FROM Piloto;
