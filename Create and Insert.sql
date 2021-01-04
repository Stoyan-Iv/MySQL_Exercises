CREATE TABLE `manifactures`(
`manifactures_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
`established_on` DATE);

CREATE TABLE `models`(
`model_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR (20),
`manufactures_id` INT,

CONSTRAINT fk_models_manufactures
FOREIGN KEY (`manufactures_id`)
REFERENCES `manifactures`(`manifactures_id`)
);
INSERT INTO `manifactures`(`name`, `established_on`)
VALUES
('BMW', '1916-03-01'),
('Tesla', '2003-01-01'),
('Lada', '1966-05-01');

INSERT INTO `models`
VALUES
(101, 'X1', 1),
(102, 'i6', 1),
(103,'Model', 2),
(104, 'Model', 2),
(105, 'Model', 2),
(106, 'Nova', 3);