CREATE TABLE "Блюдо"(
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR(255) NOT NULL,
    "Тип" VARCHAR(255) NOT NULL
);
CREATE TABLE "Поставщик"(
    "Адрес ID" INTEGER NOT NULL,
    "ID" INTEGER NOT NULL,
    "Наазвание" VARCHAR(255) NOT NULL
);
CREATE TABLE "Сотрудник"(
    "Человек ID" INTEGER NOT NULL,
    "Должность ID" INTEGER NOT NULL
);
CREATE TABLE "Посетитель"(
    "Человек ID" INTEGER NOT NULL,
    "Стол" INTEGER NOT NULL,
    "Форма обслуживания" VARCHAR(255) NOT NULL
);
CREATE TABLE "Должность"(
    "Название" VARCHAR(255) NOT NULL,
    "ID" INTEGER NOT NULL,
    "Зарплата" INTEGER NOT NULL,
    "Дата найма" DATE NOT NULL,
    "Дата увольнения" DATE NOT NULL
);
CREATE TABLE "Состав"(
    "Блюдо ID" INTEGER NOT NULL,
    "Ингредиент ID" INTEGER NOT NULL
);
CREATE TABLE "Меню"(
    "ID" VARCHAR(255) NOT NULL,
    "Год" DATE NOT NULL,
    "Сезон" VARCHAR(255) NOT NULL,
    "Тип" VARCHAR(255) NOT NULL
);
CREATE TABLE "Заказ"(
    "Стол ID" INTEGER NOT NULL,
    "Блюдо ID" INTEGER NOT NULL,
    "Цена" INTEGER NOT NULL
);
CREATE TABLE "Адрес"(
    "ID" INTEGER NOT NULL,
    "Страна" VARCHAR(255) NOT NULL,
    "Город" VARCHAR(255) NOT NULL,
    "Улица" VARCHAR(255) NOT NULL,
    "Дом" VARCHAR(255) NOT NULL
);
CREATE TABLE "Стол"("ID" BIGINT NOT NULL);
CREATE TABLE "Ингредиент"(
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR(255) NOT NULL,
    "Кол-во белков" INTEGER NOT NULL,
    "Кол-во жиров" INTEGER NOT NULL,
    "Кол-во углеводов" INTEGER NOT NULL,
    "Энергетическая ценность" INTEGER NOT NULL,
    "Аллерген" BOOLEAN NOT NULL
);
CREATE TABLE "Ресторан"(
    "Название" VARCHAR(255) NOT NULL,
    "ID" INTEGER NOT NULL,
    "Адрес ID" INTEGER NOT NULL,
    "Тип кухни" VARCHAR(255) NOT NULL,
    "Меню ID" INTEGER NOT NULL
);
CREATE TABLE "Человек"(
    "Имя" VARCHAR(255) NOT NULL,
    "Фамилия" VARCHAR(255) NOT NULL,
    "Отчетство" VARCHAR(255) NOT NULL,
    "Контакты" VARCHAR(255) NOT NULL,
    "ID" INTEGER NOT NULL
);
CREATE TABLE "Товар"(
    "Меню ID" INTEGER NOT NULL,
    "Блюдо ID" INTEGER NOT NULL,
    "Цена" INTEGER NOT NULL
);
CREATE TABLE "Поставка"(
    "ID" INTEGER NOT NULL,
    "Поставщик ID" INTEGER NOT NULL,
    "Ингредиент ID" INTEGER NOT NULL,
    "Количество" INTEGER NOT NULL,
    "Цена" INTEGER NOT NULL
);
