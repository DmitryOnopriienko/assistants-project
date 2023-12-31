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
    short_description VARCHAR(255) NOT NULL,
    inner_description VARCHAR(4096) NOT NULL,
    assistance_list VARCHAR(4096) NOT NULL
);

INSERT INTO product(title, `type`, price, short_description, inner_description, assistance_list)
VALUES ('Маркетингове просування', 1, '$900/міс',
        'Оберемо правильну стратегію просування, допоможемо зрозуміти цільову аудиторію, налаштуємо таргет-рекламу',
        'В цьому пакеті послуг ми надаємо послуги маркетингового просування вашому стартапу:',
        '<li>Аналіз ринку реклами у Вашій сфері</li>
         <li>Вивчення товару та його ключових особливостей</li>
         <li>Визначення цільової аудиторії</li>
         <li>Обирання площадок, на яких буде вестись просування</li>
         <li>Обчислення та обговорення бюджету на рекламу</li>
         <li>Визначення обсягів просування</li>
         <li>Налаштування таргету у соц-мережах, пошукових системах тощо</li>'),
       ('Допомога з плануванням', 1, '$1200/міс',
        'Сплануємо фінанси, правильно розподілимо людські ресурси, дамо вам пораду щодо команди та набору професіоналів, організуємо проджект та продакт менеджмент',
        'В цьому пакеті послуг ми допоможемо Вам з менеджментом:',
        '<li>Проаналізуємо Ваш бюджет</li>
         <li>Визначимо ключові задачі</li>
         <li>Ознайомимося з Вашою командою та визначимо їхні сильні та слабкі сторони</li>
         <li>Дамо рекомендації щодо посад людей у компанії</li>
         <li>Допоможемо найняти нові таланти</li>
         <li>Організуємо професійний продакт та проджект менеджмент</li>'),
       ('Допомога+', 1, '$1800/міс',
        'Надамо повний цикл підтримки стартапу, від маркетингу та планування, до залучення інвесторів та створення бренду',
        'В цьому пакеті послуг ми надаємо весь спектр допомоги вашому стартапу:',
        '<li>Регулярні консультації з нашими спеціалістами</li>
         <li>Повний аналіз ринку</li>
         <li>Перегляд бізнес плану та його редагування</li>
         <li>Розробка власного бренду</li>
         <li>Визначення правильної маркетингової стратегії</li>
         <li>Запуск рекламної кампанії</li>
         <li>Планування фінансів</li>
         <li>Продакт та проджект менеджмент</li>
         <li>Допомога щодо розподілення людських ресурсів та найму спеціалістів</li>
         <li>Залучення інвесторів</li>'),
       ('Маркетинг консультація', 2, '$150',
        'Надамо разову консультацію стостовно маркетингу та просування, розуміння бренду та цільової аудиторії',
        'В даному пакеті послуг ми надамо разову консультацію щодо маркетингу, на якій поспілкуємось та дамо поради:',
        '<li>Як визначити цільову аудиторію</li>
         <li>Як спланувати бюджет</li>
         <li>Разом визначимо ключові особливості Вашого продукту</li>
         <li>Розкажемо які краще обрати площадки для просування</li>'),
       ('Написання бізнес плану', 2, '$500',
        'Проаналізуємо ринок, переглянемо ваш бізнес план та напишемо новий, на основі оновленних даних та тенденцій',
        'В даному пакеті послуг ми напишемо для Вас бізнес план, або скоректуємо старий:',
        '<li>Проаналізуємо ринок Вашого продукту</li>
         <li>Розрахуємо бюджет</li>
         <li>Визначимо кількість співробітників та обсяг робіт</li>
         <li>Передивимось строки виходу на прибуток</li>
         <li>Надамо актуальну інформацію стосовно цін на ринку</li>
         <li>Пропишемо для Вас усю документацію</li>
         <li>Порадимось із юристами</li>'),
       ('Менеджмент консультація', 2, '$250',
        'Надамо разову консультацію щодо менеджменту людських ресурсів, продакт та проджект менеджменту',
        'В даному пакеті послуг ми надамо разову консультацію щодо менеджменту та підкажемо:',
        '<li>Як правильно розподілити людські ресурси</li>
         <li>Які є особливості продакт та продакт менеджменту у стартапах</li>
         <li>Як правильно налаштувати керування процесами у компанії</li>
         <li>Коли та як наймати нових співробітників</li>
         <li>Як ефективніше розподіляти та визначати час на задачі</li>');
