CREATE TABLE "Человек" (
    "ID" INTEGER NOT NULL,
    "Имя" VARCHAR NOT NULL,
    "Фамилия" VARCHAR NOT NULL,
    "Отчетство" VARCHAR NOT NULL,
    "Контакты" VARCHAR,
    primary key ("ID")
);

CREATE TABLE "Должность" (
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR NOT NULL,
    "Зарплата" INTEGER NOT NULL,
    "Дата найма" DATE NOT NULL,
    "Дата увольнения" DATE NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Стол" (
    "ID" INTEGER NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Сотрудник" (
    "Человек ID" INTEGER NOT NULL,
    "Должность ID" INTEGER NOT NULL,
    primary key ("Человек ID", "Должность ID"),
    foreign key ("Человек ID") references "Человек" ("ID") on DELETE cascade,
    foreign key ("Должность ID") references "Должность" ("ID") on delete cascade
);

CREATE TABLE "Форма обслуживания" (
    "ID" INTEGER NOT NULL,
    "Вид" VARCHAR NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Посетитель" (
    "Человек ID" INTEGER NOT NULL,
    "Форма обслуживания ID" INTEGER NOT NULL,
    "Стол ID" INTEGER,
    primary key ("Человек ID"),
    foreign key ("Человек ID") references "Человек" ("ID") on DELETE cascade,
    foreign key ("Форма обслуживания ID") references "Форма обслуживания" ("ID") on DELETE cascade,
    foreign key ("Стол ID") references "Стол" ("ID")
);

CREATE TABLE "Тип блюда" (
    "ID" INTEGER NOT NULL,
    "Тип" VARCHAR NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Блюдо" (
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR NOT NULL,
    "Тип ID" INTEGER NOT NULL,
    "Вес" INTEGER NOT NULL,
    primary key ("ID"),
    foreign key ("Тип ID") references "Тип блюда" ("ID")
);

CREATE TABLE "Заказ" (
    "Стол ID" INTEGER NOT NULL,
    "Блюдо ID" INTEGER NOT NULL,
    "Цена" INTEGER NOT NULL,
    primary key ("Стол ID", "Блюдо ID"),
    foreign key ("Стол ID") references "Стол" ("ID"),
    foreign key ("Блюдо ID") references "Блюдо" ("ID") on DELETE cascade
);

CREATE TABLE "Ингредиент" (
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR NOT NULL,
    "Кол-во белков" INTEGER NOT NULL,
    "Кол-во жиров" INTEGER NOT NULL,
    "Кол-во углеводов" INTEGER NOT NULL,
    "Энергетическая ценность" INTEGER NOT NULL,
    "Аллерген" BOOLEAN NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Состав" (
    "Блюдо ID" INTEGER NOT NULL,
    "Ингредиент ID" INTEGER NOT NULL,
    primary key ("Блюдо ID", "Ингредиент ID"),
    foreign key ("Блюдо ID") references "Блюдо" ("ID") on DELETE cascade,
    foreign key ("Ингредиент ID") references "Ингредиент" ("ID")
);

CREATE TABLE "Рецепт" (
    "Блюдо ID" INTEGER NOT NULL,
    "Рецепт" VARCHAR NOT NULL,
    primary key ("Блюдо ID"),
    foreign key ("Блюдо ID") references "Блюдо" ("ID") on DELETE cascade
);

CREATE TABLE "Сезон" (
    "ID" INTEGER NOT NULL,
    "Сезон" VARCHAR NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Тип меню" (
    "ID" INTEGER NOT NULL,
    "Тип" VARCHAR NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Меню" (
    "ID" INTEGER NOT NULL,
    "Год" DATE NOT NULL,
    "Сезон ID" INTEGER NOT NULL,
    "Тип ID" INTEGER NOT NULL,
    primary key ("ID"),
    foreign key ("Сезон ID") references "Сезон" ("ID"),
    foreign key ("Тип ID") references "Тип меню" ("ID")
);

CREATE TABLE "Товар" (
    "Меню ID" INTEGER NOT NULL,
    "Блюдо ID" INTEGER NOT NULL,
    "Цена" INTEGER NOT NULL,
    primary key ("Блюдо ID", "Цена"),
    foreign key ("Меню ID") references "Меню" ("ID") on DELETE cascade,
    foreign key ("Блюдо ID") references "Блюдо" ("ID")  on DELETE cascade
);

CREATE TABLE "Адрес"(
    "ID" INTEGER NOT NULL,
    "Страна" VARCHAR NOT NULL,
    "Город" VARCHAR NOT NULL,
    "Улица" VARCHAR NOT NULL,
    "Дом" VARCHAR NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Поставщик" (
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR NOT NULL,
    "Адрес ID" INTEGER NOT NULL,
    "Контакты" VARCHAR NOT NULL,
    primary key ("ID"),
    foreign key ("Адрес ID") references "Адрес" ("ID")
);

CREATE TABLE "Поставка" (
    "ID" INTEGER NOT NULL,
    "Поставщик ID" INTEGER NOT NULL,
    "Ингредиент ID" INTEGER NOT NULL,
    "Количество" INTEGER NOT NULL,
    "Цена" INTEGER NOT NULL,
    "Дата" DATE NOT NULL,
    primary key ("ID"),
    foreign key ("Поставщик ID") references "Поставщик" ("ID") on DELETE cascade,
    foreign key ("Ингредиент ID") references "Ингредиент" ("ID") on DELETE cascade
);

CREATE TABLE "Тип кухни"(
    "ID" INTEGER NOT NULL,
    "Тип кухни" VARCHAR NOT NULL,
    primary key ("ID")
);

CREATE TABLE "Ресторан"(
    "ID" INTEGER NOT NULL,
    "Название" VARCHAR NOT NULL,
    "Адрес ID" INTEGER NOT NULL,
    "Тип кухни ID" INTEGER NOT NULL,
    "Меню ID" INTEGER NOT NULL,
    primary key ("ID"),
    foreign key ("Адрес ID") references "Адрес" ("ID")  ,
    foreign key ("Тип кухни ID") references "Тип кухни" ("ID"),
    foreign key ("Меню ID") references "Меню" ("ID")
);
