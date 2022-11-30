CREATE TABLE `ospedali` (
  `id` int PRIMARY KEY,
  `nome` varchar(25),
  `via` varchar(50),
  `citta` varchar(50),
  `cap` int
);

CREATE TABLE `visite` (
  `idTipologia` int,
  `idOspedale` int,
  `data` date
);

CREATE TABLE `tipologieVisite` (
  `id` int PRIMARY KEY,
  `nome` varchar(25)
);

CREATE TABLE `disponibilita` (
  `idOspedale` int,
  `idTipologia` int,
  `data` data,
  `posti` int
);

ALTER TABLE `visite` ADD FOREIGN KEY (`idOspedale`) REFERENCES `ospedali` (`id`);

ALTER TABLE `visite` ADD FOREIGN KEY (`idTipologia`) REFERENCES `tipologieVisite` (`id`);

ALTER TABLE `disponibilita` ADD FOREIGN KEY (`idOspedale`) REFERENCES `ospedali` (`id`);

ALTER TABLE `disponibilita` ADD FOREIGN KEY (`idTipologia`) REFERENCES `tipologieVisite` (`id`);
