CREATE TABLE `teachers`(
`teacher_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR (20) NOT NULL,
`manager_id` INT );
INSERT INTO `teachers`
VALUES
(101, 'John', NULL),
(102, 'Maya', 106),
(103, 'Silvia', 106),
(104, 'Ted', 105),
(105, 'Mark', 101),
(106, 'Greta', 101);

ALTER TABLE `teachers`
ADD CONSTRAINT fk_teachers_managers
FOREIGN KEY (`manager_id`)
REFERENCES `teachers`(`teacher_id`);