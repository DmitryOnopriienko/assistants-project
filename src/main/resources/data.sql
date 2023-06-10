DROP DATABASE IF EXISTS `assistants`;

CREATE DATABASE IF NOT EXISTS `assistants`;

USE `assistants`;

DROP TABLE IF EXISTS worker;

CREATE TABLE IF NOT EXISTS worker (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    photo_file_name VARCHAR(255) NOT NULL
);

INSERT INTO worker(`name`, surname, job_title, photo_file_name)
VALUES ('Олексій', 'Мельник', 'Креативний директор', 'member1.png'),
       ('Анна', 'Пупкова', 'Маркетолог', 'member2.png'),
       ('Станіслав', 'Чиж', 'Спеціаліст по роботі з інвесторами', 'member3.png'),
       ('Ярослава', 'Гнатюк', 'Менеджер', 'member4.png');

DROP TABLE IF EXISTS assistance;

CREATE TABLE IF NOT EXISTS assistance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    photo_file_name VARCHAR(255) NOT NULL
);

INSERT INTO assistance(title, description, photo_file_name)
VALUES ('Менеджмент', 'Допоможемо організувати роботу, спланувати фінанси, правильно розподілити ресурси', 'menegment.svg'),
       ('Маркетинг', 'Оберемо коректну стратегію просування та створимо Ваш унікальний бренд', 'marketing.svg'),
       ('Залучення інвесторів', 'Знайдемо інвесторів для вашої компанії та переконаємо їх що саме Ви - те що потрібно їм та ринку', 'investors.svg');

DROP TABLE IF EXISTS product;

CREATE TABLE IF NOT EXISTS product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    `type` ENUM('MAIN', 'ADDITIONAL') NOT NULL,
    price VARCHAR(255) NOT NULL,
    short_description VARCHAR(255) NOT NULL
);

INSERT INTO product(title, `type`, price, short_description)
VALUES ('Маркетингове просування', 1, '$900/міс', 'Оберемо правильну стратегію просування, допоможемо зрозуміти цільову аудиторію, налаштуємо таргет-рекламу'),
       ('Допомога з плануванням', 1, '$1200/міс', 'Сплануємо фінанси, правильно розподілимо людські ресурси, дамо вам пораду щодо команди та набору професіоналів, організуємо проджект та продакт менеджмент'),
       ('Допомога+', 1, '$1800/міс', 'Надамо повний цикл підтримки стартапу, від маркетингу та планування, до залучення інвесторів та створення бренду'),
       ('Маркетинг консультація', 2, '$150', 'Надамо разову консультацію стостовно маркетингу та просування, розуміння бренду та цільової аудиторії'),
       ('Написання бізнес плану', 2, '$500', 'Проаналізуємо ринок, переглянемо ваш бізнес план та напишемо новий, на основі оновленних даних та тенденцій'),
       ('Менеджмент консультація', 2, '$250', 'Надамо разову консультацію щодо менеджменту людських ресурсів, продакт та проджект менеджменту');